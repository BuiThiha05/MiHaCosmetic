<?php
class View
{
  static function viewhome($taxonomies, $home_configs, $home_config_details)
  {
    global $ariacms;
    global $ariaConfig_template;
    global $params;
    

    session_start();  
    ?>
    <!DOCTYPE html>
    <!--[if IE]><![endif]-->
    <!--[if IE 8 ]><html dir="ltr" lang="en" class="ie8"><![endif]-->
    <!--[if IE 9 ]><html dir="ltr" lang="en" class="ie9"><![endif]-->
    <!--[if (gt IE 9)|!(IE)]><!-->
    <html dir="ltr" lang="en">
    <!--<![endif]-->

    <!-- Mirrored from amino.demo2.towerthemes.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 03 Nov 2021 03:10:37 GMT -->
    <!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
    <head>
      <link rel="icon" href="<?= $ariacms->web_information->{'image-icon'} ?>">
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title><?=$ariacms->web_information->{$params->name}?></title>
      <?= $ariacms->getBlock("head_traid"); ?>
     </head> 

    <!--thieu thi tim o day-->
    <body class="common-home">
      <div class="wrapper">
        <div id="back-top"><i class="ion-chevron-up"></i></div>


        <div id="header" class="header-absolute" >	
         <nav id="top" >
           <div class="container">
            <div class="static-nav"><?= $ariacms->web_information->{$params->slogan} ?></div>


          </div>
        </nav>

        <?= $ariacms->getBlock("header_traid"); ?>
      </div>


      <!--thieu thi tim o day-->
      <div id="content">

        <div class="main-row full-width">
          <div class="container">
            <div class="row">
              <div class="main-col col-sm-12 col-md-12">
                <div class="row sub-row">
                  <div class="sub-col col-sm-12 col-md-12">





                   <?= $ariacms->getBlock("login_traid"); ?> 
                   <?= $ariacms->getBlock("slider_traid"); ?>

                   <div class="main-row ">
                    <div class="container">
                      <div class="row">
                        <div class="main-col col-sm-12 col-md-12">
                          <div class="row sub-row">
                            <div class="sub-col col-sm-12 col-md-12">

                             <?= $ariacms->getBlock("categories_traid"); ?>
            

                           </div>
                         </div>
                       </div>
                     </div>
                   </div>
                 </div>

                 <div class="main-row full-width">
                  <div class="container">
                    <div class="row">
                      <div class="main-col col-sm-12 col-md-12">
                        <div class="row sub-row">
                          <div class="sub-col col-sm-12 col-md-12">
                            <?php foreach ($home_configs as $key => $home) {
                              if($home->id==50){ 
                                ?>
                                <div class="countdown-static"><img src="<?=$home->image?>" alt="" class="img-responsive">
                                  <div class="countdown-content">
                                    <div class="container" >
                                      <div class="info o col-md-6">
                                        
                                        <h5><?=$home->{$params->title}?></h5>
                                        <h2><?=$home->{$params->topic}?></h2>
                                        <p class="text"><?=$home->{$params->brief}?></p>
                                        <p id="countdown_banner" class=" is-countdown"></p>
                                        <?php 
                                        $thang='7';$ngay='19';$nam='2022';$gio='1';$phut='11';$giay='11';
                                        foreach($home_config_details as $key2 => $home2)
                                        {
                                  // echo "<pre>"; print_r($home2); die;
                                          if($home2->parent==50)
                                          {          
                                            if($home2->id==57){ 
                                              $thang=$home2->{$params->topic} ;
                                            }
                                            if($home2->id==58){
                                              $ngay=$home2->{$params->topic};

                                            } 
                                            if($home2->id==56){
                                              $nam=$home2->{$params->topic};

                                            } 
                                            if($home2->id==59){
                                              $gio=$home2->{$params->topic};

                                            }
                                            if($home2->id==60){
                                              $phut=$home2->{$params->topic};

                                            }
                                            if($home2->id==63){
                                              $giay=$home2->{$params->topic};
                                            }
                                          } 
                                        } 
                                                                // echo $giay ; die();
                                        ?> 


                        <script>// <![CDATA[
                        var countDownDate = new Date("<?php echo $thang.' '.$ngay.', '.$nam.' '.$gio.':'.$phut.':'.$giay?>").getTime();
                        // ]]></script>
                        

                        <a class="shop_now" href="<?=$ariacms->actual_link?>san-pham.html">Shop Now</a></div>
                      </div>
                    </div>
                  </div>
                <?php } }?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <!--danh dau-->
    <?= $ariacms->getBlock("product_home_traid"); ?>

     
  </div>
</div>
</div>
</div>
</div>
</div>
</div>
<?= $ariacms->getBlock("footer_traid"); ?>  

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div></body>
<!-- Mirrored from amino.demo2.towerthemes.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 03 Nov 2021 03:13:39 GMT -->
</html>
<?php
}
}
?>