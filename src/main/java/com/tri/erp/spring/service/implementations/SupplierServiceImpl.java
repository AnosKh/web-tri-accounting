package com.tri.erp.spring.service.implementations;

import com.tri.erp.spring.commons.EntityAccountNumberGenerator;
import com.tri.erp.spring.commons.facade.AuthenticationFacade;
import com.tri.erp.spring.commons.helpers.Checker;
import com.tri.erp.spring.commons.helpers.MessageFormatter;
import com.tri.erp.spring.model.Supplier;
import com.tri.erp.spring.model.User;
import com.tri.erp.spring.repo.SupplierRepo;
import com.tri.erp.spring.reponse.CreateResponse;
import com.tri.erp.spring.service.interfaces.SupplierService;
import com.tri.erp.spring.validator.SupplierValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;

import java.util.List;

/**
 * Created by TSI Admin on 11/11/2014.
 */

@Service
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    private AuthenticationFacade authenticationFacade;

    @Autowired
    SupplierRepo supplierRepo;

    @Autowired
    EntityAccountNumberGenerator accountNumberGenerator;

    @Override
    public Supplier findByName(String name) {

        List<Supplier> suppliers = supplierRepo.findByName(name);

        if (!Checker.collectionIsEmpty(suppliers)) {
            return suppliers.get(0);
        } else return null;
    }

    @Override
    @Transactional
    public Supplier create(Supplier supplier) {
        return supplierRepo.save(supplier);
    }

    @Override
    @Transactional(readOnly = true)
    public Supplier findById(Integer id) {
        return supplierRepo.findOne(id);
    }

    @Override
    public CreateResponse processUpdate(Supplier supplier, BindingResult bindingResult, MessageSource messageSource) {
        return processCreate(supplier, bindingResult, messageSource);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Supplier> findAll() {
        return supplierRepo.findAll();
    }

    @Override
    @Transactional
    public CreateResponse processCreate(Supplier supplier, BindingResult bindingResult, MessageSource messageSource) {
        CreateResponse response = new CreateResponse();
        MessageFormatter messageFormatter = new MessageFormatter(bindingResult, messageSource, response);

        SupplierValidator validator = new SupplierValidator();
        validator.setService(this);
        validator.validate(supplier, bindingResult);

        if (bindingResult.hasErrors()) {
            messageFormatter.buildErrorMessages();
            response = messageFormatter.getResponse();
            response.setSuccess(false);
        } else {

            if (supplier.getId() == null || supplier.getId() == 0) {    // when inserting
                User createdBy = authenticationFacade.getLoggedIn();
                supplier.setCreatedBy(createdBy);

                supplier.setAccountNumber(accountNumberGenerator.get());
            } else {
                supplier.setUpdatedAt(null); // use mysql's default
            }

            Supplier newSupplier = this.create(supplier);
            response.setModelId(newSupplier.getId());
            response.setSuccessMessage("Supplier successfully saved!");
            response.setSuccess(true);
        }

        return response;
    }
}
