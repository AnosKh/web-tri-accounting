

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
                            <div class="ibox-tools">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="" aria-expanded="false">
                                    <i class="fa fa-wrench "></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href=""></i>&nbsp;&nbsp;Pending</a></li>
                                    <li><a href=""></i>&nbsp;&nbsp;Cancelled</a></li>
                                    <li><a href=""></i>&nbsp;&nbsp;Returned</a></li>
                                    <li><a href=""></i>&nbsp;&nbsp;Audit</a></li>
                                    <li><a href=""></i>&nbsp;&nbsp;RecApproval</a></li>
                                    <li><a href=""></i>&nbsp;&nbsp;Approved</a></li>
                                    <li class="divider"></li>
                                    <li><a href="">&nbsp;&nbsp;Show All</a></li>
                                </ul>
                                <a href="index.html"><i class="fa fa-times"></i></a>
                            </div>
                        </div>

                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-sm-9">
                                    <div class="btn-group" dropdown >
                                        <button type="button" class="btn btn-primary btn-sm dropdown-toggle"><i class="fa fa-file-o"></i>&nbsp;&nbsp;
                                            Create New&nbsp;<span class="caret"></span>
                                        </button>

                                        <ul class="dropdown-menu" role="menu">
                                            <li><a ui-sref="rv.newPO"><i class="fa fa-file-o "></i>&nbsp;&nbsp;<strong>Purchase Order</strong>  Request</a></li>
                                            <li><a ui-sref="rv.newJO"><i class="fa fa-file-o "></i>&nbsp;&nbsp;<strong>Job Order</strong> Request</a></li>
                                            <li><a ui-sref="rv.newIT"><i class="fa fa-file-o "></i>&nbsp;&nbsp;<strong>Info Tech</strong> Request</a></li>
                                            <li><a ui-sref="rv.newRep"><i class="fa fa-file-o "></i>&nbsp;&nbsp;<strong>Repair</strong> Request</a></li>
                                            <li><a ui-sref="rv.newLab"><i class="fa fa-file-o "></i>&nbsp;&nbsp;<strong>Labor</strong> Request</a></li>
                                        </ul>
                                    </div>

                                </div>

                                <div class="col-sm-3 pull-right">
                                    <div class="input-group"><input type="text" placeholder="Search" class="input input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm  btn-primary"> Go!</button> </span></div>
                                </div>


                            </div>
                            <div class="row-top-buffer"></div>
                            <%--<div class="row-top-buffer"></div>
                            <div class="alert alert-success alert">
                                <small>Display list filtered by <strong> Pending</strong> RIVs</small>
                            </div>
                            <div class="row-top-buffer"></div>--%>


                            <div class="table-responsive project-list">
                                <table class="table table-striped ">
                                    <thead>
                                    <tr>
                                        <th>Status</th>
                                        <th>Reference</th>
                                        <th>Particular</th>
                                        <th>Prepared by</th>
                                        <th>Type</th>
                                        <th>Actions/Views</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%--rec--%>
                                    <tr >
                                        <td class="project-status" style="width: 100px">
                                            <span class="label label-default " ><i class="fa fa-flag-o"></i>&nbsp;Pending</span>
                                        </td>
                                        <td style="width: 250px" align="center">

                                            <small>RIV No.</small><br>
                                            <strong>RIV-2014-01-0001</strong><br>
                                            <small>Date of Delivery</small><br>
                                            <small><strong>Jul 20, 2013</strong></small>

                                        </td>
                                        <td style="width:600px" class="project-title" >
                                            <small>Purpose:</small><br>
                                            <small><strong>Emergency purchased of spare parts for MC-30.</strong></small><br>
                                            <small>Remarks:</small><br>
                                            <small><strong></strong></small>

                                        </td>
                                        <td style="width:300px" align="center">
                                            <div class="feed-element">
                                                <a>
                                                    <img alt="image" class="img-circle" src="/resources/images/pix/a1.jpg">
                                                </a>
                                                <div>
                                                    <small><strong>Dave Simbulan</strong></small><br>
                                                    <small> Contractual Worker</small> <br>
                                                    <small class="text-muted">Created: Jul 14, 2013</small>
                                                </div>
                                            </div>
                                        </td>
                                       <td>
                                            <span class="label label-warning-light " style="width: 100px">PO</span>
                                        </td>
                                        <td  style="width: 150px" align="center">
                                            <div class="btn-group" dropdown >
                                                <button type="button" class="btn  btn-primary btn-group btn-sm dropdown-toggle"><i class="fa fa-hand-o-right"></i>&nbsp;&nbsp;
                                                    Actions/Views&nbsp;<span class="caret"></span>
                                                </button>

                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a ui-sref=""><i class="fa fa-print "></i>&nbsp;&nbsp;<strong>Print</strong> RIV</a></li>
                                                    <li><a ui-sref=""><i class="fa fa-edit "></i>&nbsp;&nbsp;<strong>Edit</strong> RIV</a></li>
                                                    <li><a ui-sref=""><i class="fa fa-send-o "></i>&nbsp;&nbsp;<strong>Send</strong> For Canvass</a></li>
                                                    <li class="divider"></li>
                                                    <li><a ui-sref=""><i class="fa fa-list-alt "></i>&nbsp;&nbsp;<strong>Signatories</strong> View</a></li>
                                                    <li><a ui-sref=""><i class="fa fa-pencil-square-o"></i>&nbsp;&nbsp;<strong>Timeline</strong> View</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <%--rec--%>
                                    <tr >
                                        <td class="project-status" style="width: 100px">
                                            <span class="label label-danger " ><i class="fa fa-flag-o"></i>&nbsp;Cancelled</span>
                                        </td>
                                        <td style="width: 250px" align="center">

                                            <small>RIV No.</small><br>
                                            <strong>RIV-2014-01-0001</strong><br>
                                            <small>Date of Delivery</small><br>
                                            <small><strong>Jul 20, 2013</strong></small>

                                        </td>
                                        <td style="width:600px" class="project-title" >
                                            <small>Purpose:</small><br>
                                            <small><strong>Labor for Network/Electrical rewiring & rearrangement using wiring ducts, etc.</strong></small><br>
                                            <small>Remarks:</small><br>
                                            <small><strong></strong></small>

                                        </td>
                                        <td style="width:300px" align="center">
                                            <div class="feed-element">
                                                <a>
                                                    <img alt="image" class="img-circle" src="/resources/images/pix/a1.jpg">
                                                </a>
                                                <div>
                                                    <small><strong>Rey D. Repe</strong></small><br>
                                                    <small> MIS Head</small> <br>
                                                    <small class="text-muted">Created: Jul 14, 2013</small>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <span class="label label-navy " style="width: 100px">Labor</span>
                                        </td>
                                        <td  style="width: 150px" align="center">
                                            <div class="btn-group" dropdown >
                                                <button type="button" class="btn  btn-primary btn-group btn-sm dropdown-toggle"><i class="fa fa-hand-o-right"></i>&nbsp;&nbsp;
                                                    Actions/Views&nbsp;<span class="caret"></span>
                                                </button>

                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a ui-sref=""><i class="fa fa-print "></i>&nbsp;&nbsp;<strong>Print</strong> RIV</a></li>
                                                    <li><a ui-sref=""><i class="fa fa-edit "></i>&nbsp;&nbsp;<strong>Edit</strong> RIV</a></li>
                                                    <li><a ui-sref=""><i class="fa fa-send-o "></i>&nbsp;&nbsp;<strong>Send</strong> For Canvass</a></li>
                                                    <li class="divider"></li>
                                                    <li><a ui-sref=""><i class="fa fa-list-alt "></i>&nbsp;&nbsp;<strong>Signatories</strong> View</a></li>
                                                    <li><a ui-sref=""><i class="fa fa-pencil-square-o"></i>&nbsp;&nbsp;<strong>Timeline</strong> View</a></li>
                                                </ul>
                                            </div>
                                        </td>
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
</div>
