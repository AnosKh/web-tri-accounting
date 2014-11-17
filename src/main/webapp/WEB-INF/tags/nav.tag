<%@ tag %>
<div style="margin-top: 20px;"></div>
<ul class="nav nav-pills">
    <li class="active"><a href="/">Home</a></li>
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            Setup <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">
            <li><a href="/admin/coa">Chart of Accounts</a></li>
            <li><a href="/admin/user">Users</a></li>
            <li><a href="/admin/supplier">Suppliers</a></li>
        </ul>
    </li>
    <li><a href="/admin/showcase">Showcase</a></li>
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
            Inventory <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" role="menu">
            <li><a href="/inventory/withdrawal">Stock Withdrawal</a></li>
            <li><a href="javascript:void(0);">Stock Approval</a></li>
            <li><a href="javascript:void(0);">Stock Release</a></li>
        </ul>
    </li>
</ul>