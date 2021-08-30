<?php 
          
        session_start(); 
        if($_SESSION['u'] != null){
            require('sessionexp.php');
    
        include_once('dbconnect.php');
        $id_dep = $_GET['id_dep'];
        $name_dep = $_GET['name_dep'];


        $sql = "INSERT INTO  dep(id_dep,name_dep)
                VALUES(?,?)";

        $stmt = $conn->prepare($sql);

        $stmt->bind_param("ss",$id_dep,$name_dep);

        $stmt->execute();
        $stmt->close();
        header( 'Location: showdep.php' ) ;
?>
<?php } else {
header( 'Location: showstudent.php');
} ?>