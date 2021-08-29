<?php 
    session_start();
    $u = $_GET['username'];
    $p = $_GET['password'];

    include_once('dbconnect.php');

    $sql = "SELECT a.id_stu, a.username, a.password, s.pre_stu, s.fname_stu, s.lname_stu,
            s.tel_stu, s.email_stu, s.gpa_stu, d.name_dep
            FROM account  a, student s, dep d
            WHERE a.id_stu = s.id_stu
            AND   s.id_dep = d.id_dep
            AND   username like ? AND password like ?";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss",$u, $p);
    $stmt->execute();
    // $stmt -> store_result();
    // $stmt->bind_result($user,$pass);
    

    if($stmt->fetch()){
        $_SESSION['u'] = $u;
        $_SESSION['p'] = $p;
        require('sessionexp.php');
        header( 'Location: showstudent.php');

    }else { header( 'Location: showstudent.php');
    }
    ?>






?>