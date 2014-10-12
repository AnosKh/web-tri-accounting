<div ng-controller="addEditUserCtrl">
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <button class="btn btn-primary" onclick="(window.location.href = '#/users')">Users</button>
        </div>
    </div>
    <div class="row-top-buffer"></div>
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <div class="alert alert-info">{{ title }}</div>
        </div>
    </div>
    <form ng-submit="processForm()" ng-show="showForm">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="fullName">Full name</label>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                        <input required maxlength="512" ng-model="user.fullName" id="fullName" name="fullName" class="form-control" type="text" placeholder="Enter full name"/>
                    </div>
                </div>
                <div class="col-md-5 col-lg-5">
                    <span style="color: red !important;" ng-show="errors.err_fullName">
                        <ul class="error-list">
                            <li ng-repeat="err in errors.err_fullName">
                                {{ err }}
                            </li>
                        </ul>
                    </span>
                </div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="username">Username</label>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                        <input required maxlength="64" ng-model="user.username" id="username" name="username" class="form-control" type="text" placeholder="Enter username"/>
                    </div>
                </div>
                <div class="col-md-5 col-lg-5">
                    <span style="color: red !important;" ng-show="errors.err_username">
                        <ul class="error-list">
                            <li ng-repeat="err in errors.err_username">
                                {{ err }}
                            </li>
                        </ul>
                    </span>
                </div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="email">Email</label>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                        <input required maxlength="128" ng-model="user.email" id="email" name="email" class="form-control" type="email" placeholder="Enter email address"/>
                    </div>
                </div>
                <div class="col-md-5 col-lg-5">
                    <span style="color: red !important;" ng-show="errors.err_email">
                        <ul class="error-list">
                            <li ng-repeat="err in errors.err_email">
                                {{ err }}
                            </li>
                        </ul>
                    </span>
                </div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="password">Password</label>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                        <input required maxlength="512" ng-model="user.password" id="password" name="password" class="form-control" type="password" placeholder="Enter password"/>
                    </div>
                </div>
                <div class="col-md-5 col-lg-5">
                    <span style="color: red !important;" ng-show="errors.err_password">
                        <ul class="error-list">
                            <li ng-repeat="err in errors.err_password">
                                {{ err }}
                            </li>
                        </ul>
                    </span>
                </div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                    <label class="input-label" for="retypePassword">Retype password</label>
                </div>
                <div class="col-md-5 col-lg-5">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                        <input required  ng-model="user.retypePassword" maxlength="512" id="retypePassword" name="retypePassword" class="form-control" type="password" placeholder="Retype password"/>
                    </div>
                </div>
                <div class="col-md-5 col-lg-5">
                    <span style="color: red !important;" ng-show="errors.err_retypePassword">
                        <ul class="error-list">
                            <li ng-repeat="err in errors.err_retypePassword">
                                {{ err }}
                            </li>
                        </ul>
                    </span>
                </div>
            </div>
        </div>

        <div class="row-top-buffer"></div>

        <div class="row">
            <div class="col-md-12 col-lg-12">
                <div class="col-md-2 col-lg-2">
                </div>
                <div class="col-md-5 col-lg-5">
                    <fieldset ng-disabled="submitting">
                        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> {{ save }}</button>
                        <button type="reset" class="btn btn-default"><span class="glyphicon glyphicon-refresh"></span> Reset</button>
                    </fieldset>
                </div>
            </div>
        </div>
    </form>
</div>


