<?php
global $database;
global $ariacms;
global $params;
$query = "SELECT * FROM e4_web_home";
$database->setQuery($query);
$homes = $database->loadObjectList();
?>
<div class="policy-block">
  <div class="inner">
     <?php foreach($homes as $key => $home) 
      { 
        if($home->parent==53){ ?> 
    <div class="col">
      <div class="box">
        <div class="inner">
          <img src="<?=$home->image ?>" alt="policy1">
          <div class="text">
            <label><?=$home->{$params->title}?></label>
            <p><?=$home->{$params->brief}?></p>
        </div>
    </div>
</div>
</div>
<?php } } ?>

</div>
</div>