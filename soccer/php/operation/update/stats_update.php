<html>
  <head>
      <title>Soccer Management System</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="icon" href="../../../images/icon.jpg">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <link type="text/css" rel="stylesheet" href="../../../css/navbar.css">
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="../../../css/main.css" rel="stylesheet" />
	
	
	
	<nav id="navbar" class="navigation-bar">
  <div class="nav-wrapper">
      <!-- Navbar Logo -->
    <div class="logo">
      <!-- Logo Placeholder for Inlustration -->
      <a href="#home"><i class="fas fa-chess-knight"></i>Soccer DBMS </a>
    </div>

    <!-- Navbar Links -->
    <ul id="menu">
      <li><a href="../../../index.html">Search</a></li><!--
	--><li><a href="../../matches.php">Matches</a></li><!--
	--><li><a href="../../operations.php">Operations</a></li><!--
	  
	      --><li><a href="../../database.php">Database</a></li><!--
   -->
    </ul>
  </div>
</nav>


<style>
table, th, td {
    border: 1px solid black;
}

h3 {
	margin:10px;
}
input {
	padding:3px;
}
</style>

	</head>

  <body>

<div class="s003">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "football_league";


$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully<br>";	

$iplayerid=$_POST["playerid"];
$iredcards=$_POST["redcards"];
$iyellowcards = $_POST["yellowcards"];
$igoals = $_POST["goals"];
$iassists = $_POST["assists"];
$icleansheets = $_POST["cleansheets"];


	 $sql_s="Update football_league.stats set redcards=\"$iredcards\", yellowcards=\"$iyellowcards\", goals=\"$igoals\", assists=\"$iassists\", cleansheets=\"$icleansheets\" where playerid = \"$iplayerid\"";
$result_s = $conn->query($sql_s);
	if ($result_s === TRUE) {
    echo "New record created successfully";
	header("Location:../../../html/success_update.html");
} else {
    echo "Error: " . $sql_s . "<br>" . $conn->error;
	header("Location:../../../html/unsuccessful.html");
}


	?>
</div>  
  
  
  
  
  
  
  
  </body>
	</html>