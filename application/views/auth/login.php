<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<?php echo $css;?>
	<?php echo $js;?>
    <script>
		$(function() {
			$("#form_login").validate({
				errorPlacement: function(error, element){
				$('#error_message').text('กรุณากรอกชื่อผู้ใช้และรหัสผ่านให้ครบถ้วน');
				},
    			rules:{
					identity:{
						required: true
					},
					password:{
						required: true
					}
				},//end rules
				messages:{
					identity:{
						required: "กรุณากรอก Username"
					},
					password:{
						required: "กรุณากรอก Password"
					}
				}//end messages	
    		});//end validate
		}); //end ready
	</script>
	<style>
		.box-login{
			width: 500px;
			padding: 30px 50px;
			margin:100px auto;
		}
		label.error,#infoMessage, #error_message{
			/*color: red;	*/
		}

	</style>
    <title><?php echo $title; ?></title>
    
</head>
<body>
	<div class="container">

      <?php echo form_open("auth/login",array('id'=>'form_login','name'=>'form_login','class'=>'form-signin','role'=>'form'));?>
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="form-control" name="identity" id="identity" placeholder="Email address" required autofocus>
        <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me" name="remember" id="remember"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit" id="submit">Sign in</button>
        
        <div id="error_message"></div>
		<div id="infoMessage">
			<?php echo $message;?>
		</div>
		
      <?php echo form_close();?>
      
      	<div id="error_message"></div>
		<div id="infoMessage">
			<?php echo $message;?>
		</div>

    </div> <!-- /container -->
    
    
    <div class="container">

      <form class="form-signin" role="form">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="email" class="form-control" placeholder="Email address" required autofocus>
        <input type="password" class="form-control" placeholder="Password" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
	
	
	
	
	
</body>
</html>