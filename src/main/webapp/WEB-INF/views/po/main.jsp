<div ui-view>
    <div class="row">
        <div class="col-md-12 col-lg-12">
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>List of Purchase Order</h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-2">
                            <a ui-sref="po.new" class="btn btn-primary">Create</a>
                        </div>
                        <div class="col-sm-3 pull-right">
                            <div class="input-group"><input type="text" placeholder="Search" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> Go!</button> </span></div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>PO Number</th>
                                <th>Date</th>
                                <th>Supplier</th>
                                <th>Status</th>
                                <th>Prepared By</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>PO-2014-01-0001</td>
                                <td>Jul 15, 2013</td>
                                <td>PHILIPPINE HEALTH INSURANCE CORPORATION</td>
                                <td>LESTER JOHN PAUL CADIZ</td>
                                <td><span class="label label-danger">Document Created</span></td>
                            </tr>
                            <tr>
                                <td>PO-2014-01-0002</td>
                                <td>Jul 15, 2013</td>
                                <td>POLARIS POWER ENGINEERING</td>
                                <td>LESTER JOHN PAUL CADIZ</td>
                                <td><span class="label label-primary">For Approval</span></td>
                            </tr>
                            <tr>
                                <td>PO-2014-01-0003</td>
                                <td>Jul 18, 2013</td>
                                <td>COPYLANDIA OFFICE SYSTEMS CORPORATION</td>
                                <td>LESTER JOHN PAUL CADIZ</td>
                                <td><span class="label label-danger">Document Created</span></td>
                            </tr>
                            <tr>
                                <td>PO-2014-01-0004</td>
                                <td>Jul 18, 2013</td>
                                <td>ALOTA ENGINEERING WORKS</td>
                                <td>LESTER JOHN PAUL CADIZ</td>
                                <td><span class="label label-danger">Document Created</span></td>
                            </tr>
                            <tr>
                                <td>PO-2014-01-0005</td>
                                <td>Jul 25, 2013</td>
                                <td>ACELOGIC COMPUTER SOLUTIONS</td>
                                <td>LESTER JOHN PAUL CADIZ</td>
                                <td><span class="label label-info">Approved</span></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
