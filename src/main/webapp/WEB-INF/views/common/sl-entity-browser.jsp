<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<button title="browse account"  class="btn btn-primary" data-toggle="modal" data-target="#slEntityModal"> {{ btnLabel }}</button>

<div class="modal fade" id="slEntityModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="width: 90%"  ng-app="cmnAccountBrowserWithSegmentApp">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Browse entities</h4>
            </div>
            <div class="modal-body">
                <div>
                    <div class="row">
                        <div class="input-group pull-right" style="width: 300px">
                            <input class="form-control" placeholder="Search" ng-model="query" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="row-top-buffer" style="margin-top: 15px"/>
                            <div class='row' style="border-top: 1px solid #dcdcdc; padding-top: 10px">
                                <div class="col-md-1 col-lg-1"><span style="font-weight: bold; padding-left: 2px;">Acct No</span></div>
                                <div class="col-md-5 col-lg-5"><span style="font-weight: bold; padding-left: 30px;">Name</span></div>
                                <div class="col-md-6 col-lg-6"><span style="font-weight: bold">Address</span></div>
                            </div>
                            <div class="row-top-buffer" style="margin-top: 5px"/>
                            <div class="row" style='max-height: 500px; overflow: auto;'>
                                <div ng-show="!slEntities">Loading entities...</div>
                                <table class="table table-striped table-hover table-bordered">
                                    <thead>
                                    <tr>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr data-dismiss="modal" ng-repeat="entity in entities = (slEntities | filter:query)" style="cursor: pointer" ng-click="selectEntity(entity)">
                                        <td style="width: 100px;">{{entity.accountNo}}</td>
                                        <td style="width: 480px;">{{entity.name}} <span class="label {{entityClass(entity.marker)}} pull-right">{{convert(entity.marker)}}</span></td>
                                        <td>{{entity.address}}</td>
                                    </tr>
                                    <tr ng-show="entities.length == 0"><td colspan="3" align="center">No records found</td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

</script>