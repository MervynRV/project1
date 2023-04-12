<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register Page</title>
  <link rel="stylesheet" href="css/forms.css">

</head>

<body>
  <div class="alert-box">
    <p class="alert">Hello</p>

  </div>

 
 
	<form name="form" method="post" action="newaccount.php" style="color:#000000; margin: auto; width: 220px;" target="_self" onSubmit = "return checkPassword(this)">
    <div class = "container">
        <label for="name"><b>Full Name</b></label><br>
        <input type="text" placeholder="Enter Full Name" name="newname" required minlength="5"><br><br>
	   
		<label for="password"><b>Password</b></label><br>
        <input type="password" placeholder="Enter Password" name="newpassword" required minlength="5"><br><br>
		<button type="submit" class="registerbtn">Submit</button>
    </form>
  </div>

  <!-- <script src="js/form.js"></script> -->

</body>

</html>