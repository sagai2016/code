<div class="row">
  <div class="col-sm-6" style="display: none;">
    <h2><?php echo $text_new_customer; ?></h2>
    <p><?php echo $text_checkout; ?></p>
    <div class="radio">
      <label>
        <?php if ($account == 'register') { ?>
        <input type="radio" name="account" value="register" checked="checked" />
        <?php } else { ?>
        <input type="radio" name="account" value="register" />
        <?php } ?>
        <?php echo $text_register; ?></label>
    </div>
  </div>
  <div class="col-sm-12">
      <h2 style="display: none"><?php echo $text_returning_customer; ?></h2>
    <p style="display: none"> <?php echo $text_i_am_returning_customer; ?></p>
    <div class="form-group">
      <label class="control-label" for="input-email" style="display: none"><?php echo $entry_email; ?></label>
      <input type="text" name="email" value="" placeholder="<?php echo $entry_telephone; ?>" id="input-email" class="form-control" />
    </div>
    <div class="form-group">
      <label class="control-label" for="input-password" style="display: none"><?php echo $entry_password; ?></label>
      <input type="password" name="password" value="" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
      <p><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></p></div>
    <input type="button" value="<?php echo $button_login; ?>" id="button-login" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
    <input type="button" value="用户注册" class="button-account" id="button-account"  data-loading-text="<?php echo $text_loading; ?>">
  </div>
</div>
