<?php   
    session_start();
    include_once('dbconnect.php');
    $id_stu = $_GET['id_stu'];
    $pre_stu = $_GET['pre_stu'];
    $fname_stu = $_GET['fname_stu'];
    $lname_stu = $_GET['lname_stu'];
    $tel_stu = $_GET['tel_stu'];
    $email_stu = $_GET['email_stu'];
    $gpa_stu = $_GET['gpa_stu'];
    $id_dep = $_GET['id_dep'];

    $sql = "SELECT  id_stu FROM    student   WHERE   id_stu like ?";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s",$id_stu);

    $stmt->execute();
    $stmt -> store_result(); 
    $stmt -> bind_result($id_stu); 

    if($stmt->fetch()){
            $sql1 = "UPDATE student SET  pre_stu = ?,
                     fname_stu = ?,
                     lname_stu = ?,
                     tel_stu = ?,
                     email_stu = ?,
                     gpa_stu = ?,
                     id_dep = ?
                    WHERE id_stu like ?";
            $stmt = $conn->prepare($sql1);
            $stmt->bind_param("ssssssss",$pre_stu,$fname_stu,$lname_stu,$tel_stu,$email_stu,$gpa_stu,$id_dep,$id_stu);
            $stmt->execute();
            $stmt->close();
            header( 'Location: showstudent.php');
    }else {
            echo "ไม่พบข้อมูลรหัสนักศึกษา" . $id_stu;
    }
?>

