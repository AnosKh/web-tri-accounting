

<div ui-view>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-lg-9">
            <h2><b>Requisition Issue Voucher</b></h2>
            <ol class="breadcrumb">
                <li>
                    <a href="index.html">Home</a>
                </li>
                <li class="active">
                    <strong>RIV List</strong>
                </li>
            </ol>
        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-md-12 col-lg-12">
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>List of Requested Issue Voucher/s</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="btn-group" dropdown >
                                        <button type="button" class="btn btn-primary dropdown-toggle"><i class="fa fa-file-o"></i>&nbsp;
                                            Create New&nbsp;<span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a ui-sref="rv.newPO" ng-click="open()"><strong>Purchase Order</strong> Request</a></li>
                                            <li><a ui-sref="rv.newJO"><strong>Job Order</strong> Request</a></li>
                                            <li><a ui-sref="rv.newIT"><strong>Info Tech</strong> Request</a></li>
                                        </ul>
                                    </div>
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
                                        <th>RV Number</th>
                                        <th>Delivery Date</th>
                                        <th>Purpose</th>
                                        <th>Type</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th>Prepared By</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>RIV-2014-01-0001</td>
                                        <td>Jul 15, 2013</td>
                                        <td>MIS equipment</td>
                                        <td>For PO</td>
                                        <td>Jul 14, 2013</td>
                                        <td>LESTER JOHN PAUL CADIZ</td>
                                        <td><span class="label label-danger">Document Created</span></td>
                                    </tr>
                                    <tr>
                                        <td>RIV-2014-01-0002</td>
                                        <td>Jul 15, 2013</td>
                                        <td>Labor for Network/Electrical rewiring & rearrangement using wiring ducts, etc.</td>
                                        <td>For PO</td>
                                        <td>Jul 14, 2013</td>
                                        <td>LESTER JOHN PAUL CADIZ</td>
                                        <td><span class="label label-danger">Document Created</span></td>
                                    </tr>
                                    <tr>
                                        <td>RIV-2014-01-0003</td>
                                        <td>Jul 18, 2013</td>
                                        <td>FSD Spare parts for MC-40</td>
                                        <td>For PO</td>
                                        <td>Jul 15, 2013</td>
                                        <td>LESTER JOHN PAUL CADIZ</td>
                                        <td><span class="label label-danger">Document Created</span></td>
                                    </tr>
                                    <tr>
                                        <td>RIV-2014-01-0004</td>
                                        <td>Jul 18, 2013</td>
                                        <td>Area Operation Department - Guihulngan
                                            Rewinding of Primary coil of MC-31</td>
                                        <td>For JO</td>
                                        <td>Jul 16, 2013</td>
                                        <td>LESTER JOHN PAUL CADIZ</td>
                                        <td><span class="label label-danger">Document Created</span></td>
                                    </tr>
                                    <tr>
                                        <td>RIV-2014-01-0005</td>
                                        <td>Jul 25, 2013</td>
                                        <td>OGM - Internal Audit Division
                                            Office Supplies/ First Quarter</td>
                                        <td>For PO</td>
                                        <td>Jul 18, 2013</td>
                                        <td>LESTER JOHN PAUL CADIZ</td>
                                        <td><span class="label label-danger">Document Created</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>