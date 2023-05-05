<?php
global $database;
global $ariacms;
global $params;
?>          
<div id="ajax-login-block">
</div>
<div id="ajax-loader">
    <img src="image/catalog/ajax-loader.gif" alt="" />
</div>
<div class="ajax-body-login">
    <div class="account-login">
        <div class="page-title">
            <h2>Login or create an account</h2>
            <a href="javascript:void(0);" class="a-close-frm" onclick="ptlogin.closeForm();"><span>Close</span></a>
        </div>
        <div class="ajax-content">
            <div class="ajax-container">
                <div class="login-form-content">
                    <h3><?=_SIGN_IN?></h3>
                    
                    <form action="<?php echo $ariacms->actual_link . 'register/check-login.html'; ?>" method="post" id="ajax-login-form" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="control-label" for="input-email"><?= _USERNAME?>&nbsp;</label>
                            <input type="text" name="username" value="" placeholder="E-Mail Address" id="username" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-password"><?= _PASSWORD?>&nbsp;</label>
                            <input type="password" name="password" value="" placeholder="Password" id="password" class="form-control" />
                            <a class="forgotten" href="https://klbtheme.com/qualis/my-account/lost-password/"><?= _LOST_PASS?></a>
                        </div>
                        <div class="action">
                            <input type="hidden" id="woocommerce-login-nonce" name="woocommerce-login-nonce" value="cbb561423c" /><input type="hidden" name="_wp_http_referer" value="/qualis/my-account/" />               
                            <button type="submit" class="button btn"  value="Log in"><?= _LOGIN?></button>
                            <!--  <button class="button btn" type="button" onclick="ptlogin.loginAction(document.getElementById('input-email').value, document.getElementById('input-password').value)"><span>Login</span></button> -->
                            <button class="button btn" type="button" onclick="ptlogin.appendRegisterForm()"><span>Create an account</span></button>
                            <img class="ajax-load-img" alt="" src="/templates/traid/image/catalog/ajax-loader.gif" width="30" height="30" />
                        </div>
                    </form>
                </div>
            </div>

            <script type="text/javascript">
                $(document).ready(function () {
                    var keycode = '';

                    $('#input-email').keypress(function (e) {
                        keycode = (e.keyCode ? e.keyCode : e.which);
                        if(keycode == '13') {
                            ptlogin.loginAction(ptlogin.loginAction(document.getElementById('input-email').value, document.getElementById('input-password').value));
                        }
                    });

                    $('#input-password').keypress(function (e) {
                        keycode = (e.keyCode ? e.keyCode : e.which);
                        if(keycode == '13') {
                            ptlogin.loginAction(ptlogin.loginAction(document.getElementById('input-email').value, document.getElementById('input-password').value));
                        }
                    });
                });

            </script>


        </div>
    </div>
    <div class="account-register">
        <div class="page-title">
            <h2>Login or create an account</h2>
            <a href="javascript:void(0);" class="a-close-frm" onclick="ptlogin.closeForm();"><span>Close</span></a>
        </div>
        <div class="ajax-content">
            <div class="ajax-container">
                <div class="register-form-content">
                    <h3><?=_REGISTER_ACCOUNT?></h3>
                    
                    <form action="<?php echo $ariacms->actual_link . 'register/check-register.html'; ?>" method="post" id="ajax-register-form" enctype="multipart/form-data" class="form-horizontal">
                        <fieldset id="account">
                            <legend><?=_YOUR_PERSONAL_DETAILS?></legend>
                          <!--   <div class="form-group required" style="display:  none ;">
                                <label class="col-sm-2 control-label">Customer Group</label>
                                <div class="col-sm-10">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="customer_group_id" value="1" checked="checked" />
                                        Default</label>
                                    </div>
                                </div>
                            </div> -->
                            <div class="form-group required">
                              <label class="col-sm-2 control-label" for="input-lastname"><?=_FULLNAME?></label>
                              <div class="col-sm-10">
                                <input type="text" name="fullname"  placeholder="<?=_FULLNAME?>" id="fullname" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group required">
                          <label class="col-sm-2 control-label" for="input-email"><?=_EMAIL?></label>
                          <div class="col-sm-10">
                            <input type="email" name="username"  placeholder="<?=_EMAIL?>" id="username" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                      <label class="col-sm-2 control-label" for="input-telephone"><?=_PHONE?></label>
                      <div class="col-sm-10">
                        <input type="tel" name="phonenumber" placeholder="<?=_PHONE?>" id="phonenumber" class="form-control" />
                    </div>
                </div>

                <div class="form-group required">
                  <label class="col-sm-2 control-label" for="input-password"><?=_PASSWORD?></label>
                  <div class="col-sm-10">
                    <input type="password" name="password"  placeholder="<?=_PASSWORD?>" id="Password" class="form-control" />
                </div>
            </div>
        </fieldset>


        <div class="buttons">
            <div class="pull-right">
                <!-- <input type="checkbox" name="agree" value="1" /> -->
                &nbsp;
                <input type="submit" onclick="ptlogin.registerAction();" value="Sign up" class="btn btn-primary" />
                <img class="ajax-load-img" alt="" src="image/catalog/ajax-loader.gif" width="30" height="30" />
            </div>
        </div>
    </form>
</div>
<div class="alert alert-danger for-error error-warning"><i class="fa fa-exclamation-circle"></i><span></span></div>
</div>
<script type="text/javascript"><!--
    // Sort the custom fields
    $('#account .form-group[data-sort]').detach().each(function() {
        if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {
            $('#account .form-group').eq($(this).attr('data-sort')).before(this);
        }

        if ($(this).attr('data-sort') > $('#account .form-group').length) {
            $('#account .form-group:last').after(this);
        }

        if ($(this).attr('data-sort') < -$('#account .form-group').length) {
            $('#account .form-group:first').before(this);
        }
    });

    $('#address .form-group[data-sort]').detach().each(function() {
        if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#address .form-group').length) {
            $('#address .form-group').eq($(this).attr('data-sort')).before(this);
        }

        if ($(this).attr('data-sort') > $('#address .form-group').length) {
            $('#address .form-group:last').after(this);
        }

        if ($(this).attr('data-sort') < -$('#address .form-group').length) {
            $('#address .form-group:first').before(this);
        }
    });

    

    $('input[name=\'customer_group_id\']:checked').trigger('change');
    //--></script>
    

</div>
</div>
<!-- <div class="account-success">
    <div class="ajax-content">
        <div class="ajax-container">
          <div class="success-content">
            <div class="page-title"><h2>Your Account Has Been Created!</h2></div>
            <p>Thank you for registering with Amino1!</p><p>You will be notified by e-mail once your account has been activated by the store owner.</p><p>If you have ANY questions about the operation of this online shop, please <a href="index2724.html?route=information/contact">contact the store owner</a>.</p>
            <div class="buttons">
              <div class="pull-right"><button class="button" onclick="window.location.href='indexe223.html?route=account/account'"><span>Continue</span></button></div>
          </div>
      </div>
  </div>
</div>
</div>
<div class="logout-success">
    <div class="ajax-content">
        <div class="ajax-container">
          <div class="success-content">
            <div class="page-title"><h2>Account Logout</h2></div>
            <p>You have been logged off your account. It is now safe to leave the computer.</p><p>Your shopping cart has been saved, the items inside it will be restored whenever you log back into your account.</p>
            <div class="buttons">
              <div class="pull-right"><button class="button" onclick="window.location.href='index.html'"><span>Continue</span></button></div>
          </div>
      </div>
  </div>
</div>
</div> -->

</div>

<input type="hidden" id="quicklogin-status" value="1" />



<div class="newsletter-container newsletter-popup">
  <a href="javascript:void(0)" class="a-close-newsletter-full" onclick="ptnewsletter.closePopup();"></a>
  <div class="popup-content">
      <a href="javascript:void(0)" class="a-close-newsletter" onclick="ptnewsletter.closePopup();">Close</a>

      <h3><?= _NEWSLETTER?></h3>
      <p>Enjoy our newsletter to stay updated with the latest news and special sales. Let's your email address here!</p>
      <div class="newsletter-content">
       <form action="/lien-he.html" method="post">
        <div class="content">
            <input type="email" class="newsletter_email" name="email" value="" placeholder="Please enter your email to subscribe" />

            <button type="submit" name="btnSubmit" value="newsletter" class="btn btn-primary" ><?=_SUBSCRIBE?></button>
        </div>
        <p class="text-note">Don’t worry we don’t spam</p>
        <div class="newsletter-notification"></div>
        <div class="notice">
            <input type="checkbox" class="cbk_newsletter" />
            <span>Don't show again</span>
        </div>
    </form>
</div>

</div>
</div>