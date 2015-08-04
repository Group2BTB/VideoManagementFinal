<!-- Modal for register -->
        <div class="modal fade" id="register" role="dialog">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content">

                    <!-- Start modal header -->
                    <div class="modal-header">
                        <h3 class="modal-title text-center text-info">Register new account</h3>
                    </div>
                    <!-- End modal header -->

                    <!-- Start modal body -->
                    <div class="modal-body">
                        <form action="register" method="post" class="form-horizontal" role="form" onsubmit="return validateRegister();">
                            <div class="form-group" id="username_re_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Username</span>
                                        <input id="username_re" type="text" class="form-control" name="username" value="" placeholder="Username">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="fullname_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Full Name</span>
                                        <input id="fullname" type="text" class="form-control" name="fullname" placeholder="Fullname">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="gender_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Gender</span>&nbsp;
                                        <input type="radio" name="gender" value="male" checked>Male &nbsp;
                                        <input type="radio" name="gender" value="female">Female
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="DOB_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Date of Birth</span>
                                        <input id="DOB" type="date" class="form-control" name="DOB" placeholder="Date of Birth" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="email_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Email</span>
                                        <input id="email" type="email" class="form-control" name="email" placeholder="Email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="role_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Position</span>
                                        <select class="form-control" id="role" autofocus>
                                            <option value="def" selected=true disabled>Choose your position?</option>
                                            <option value="stu">Study</option>
                                            <option value="work">Work</option>
                                            <option value="buss">Business</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="department_name_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Departement</span>
                                        <select class="form-control" id="department_name">
                                            <option value="def" selected=true disabled>Choose your position?</option>
                                            <option>IT</option>
                                            <option>Consultancy</option>
                                            <option>Entreperneur</option>
                                            <option>Finance & Economics</option>
                                            <option>HR & Legal</option>
                                            <option>Engineering</option>
                                            <option>Management</option>
                                            <option>Marketing, Communication & Media</option>
                                            <option>Medicine & Biotechnology</option>
                                            <option>Sales</option>
                                            <option>Public Sector</option>
                                            <option>Other</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="phone_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Phone number</span>
                                        <input id="phone" type="text" class="form-control" name="phone" placeholder="Phone number">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="university_name_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">School</span>
                                        <select class="form-control" id="university_name">
                                            <option value="def" selected=true disabled>Choose your school?</option>
                                            <option>BBU</option>
                                            <option>RUPP</option>
                                            <option>SETEC</option>
                                            <option>PUC</option>
                                            <option>PPIU</option>
                                            <option>NU</option>
                                            <option>UBB</option>
                                            <option>AEU</option>
                                            <option>UME</option>
                                            <option>RAC</option>
                                            <option>CARDI</option>
                                            <option>ITC</option>
                                            <option>CSUK</option>
                                            <option>NIE</option>
                                            <option>NTTI</option>
                                            <option>PNCA</option>
                                            <option>RUA</option>
                                            <option>RUFA</option>
                                            <option>RULE</option>
                                            <option>SRU</option>
                                            <option>UHS</option>
                                            <option>IC</option>
                                            <option>UC</option>
                                            <option>UP</option>
                                            <option>PPIT</option>
                                            <option>CamEd</option>
                                            <option>SPI</option>
                                            <option>BELTI</option>
                                            <option>CMU</option>
                                            <option>AUPP</option>
                                            <option>ZAMAN</option>
                                            <option>CUS</option>
                                            <option>NUM</option>
                                            <option>PCU</option>
                                            <option>Other</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="passwd_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Password</span>
                                        <input id="passwd" type="password" class="form-control" name="passwd" placeholder="Password">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" id="con_passwd_field">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="input-group">
                                        <span class="input-group-addon">Confirm Password</span>
                                        <input id="con_passwd" type="password" class="form-control" name="con_passwd" placeholder="Confirm Password">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <!-- Button -->
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 controls">
                                            <button type="submit" class="btn btn-primary center-block"><i class="glyphicon glyphicon-registration-mark"></i> Register </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                    <!-- End modal body-->
