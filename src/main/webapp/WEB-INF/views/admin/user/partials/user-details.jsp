<div class="row">
    <div class="col-md-12 col-lg-12">
        <button class="btn btn-primary" onclick="(window.location.href = '#/users')">Users</button>
        <button class="btn btn-primary" onclick="(window.location.href = '#/new')">Add</button>
        <button class="btn btn-primary" ng-click="pointToEditForm()">Edit</button>
    </div>
</div>
<div style="margin-top: 20px;"></div>
<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="alert alert-info">{{ title }}</div>
    </div>
</div>
<div class="row" ng-show="showDetails">
    <div class="col-md-7 col-lg-7">
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-3 col-lg-3">
                    <label class="input-label">Full name</label>
                </div>
                <div class="col-md-9 col-lg-9">
                    <label class="value-label">{{ user.fullName }}</label>
                </div>
            </div>
        </div>
    </div>
</div>