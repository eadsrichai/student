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
$user = $_GET['user'];
$pass = $_GET['pass'];


$sql1 = "SELECT  id_stu
        FROM     student
        WHERE   id_stu 
        LIKE     ?";

$stmt = $conn->prepare($sql1);
$stmt->bind_param("s",$id_stu);
$stmt->execute();
$stmt -> store_result();

echo "เจอ" . $stmt -> num_rows;
if(!$stmt->fetch()){

$sql = "INSERT INTO  student(id_stu,pre_stu,fname_stu,lname_stu,tel_stu,email_stu,gpa_stu,id_dep)
        VALUES(?,?,?,?,?,?,?,?)";

$stmt = $conn->prepare($sql);

$stmt->bind_param("ssssssss",$id_stu,$pre_stu,$fname_stu,$lname_stu,$tel_stu,$email_stu,$gpa_stu,$id_dep);

$stmt->execute();

$sql1 = "INSERT INTO account(id_stu,username,password) VAlUES(?,?,?)";
$stmt = $conn->prepare($sql1);
$stmt->bind_param("sss",$id_stu,$user,$pass);
$stmt->execute();

$stmt->close();

 header( 'Location: showstudent.php' ) ;
}else {
echo "รหัสนักศึกษา" . $id_stu . "มีแล้ว";
}
?>