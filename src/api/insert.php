<?php
	//接收参数
    $pid=isset($_GET['pid']) ? $_GET['pid'] : '';
    $num=isset($_GET['num']) ? $_GET['num'] : '';
    $uid=isset($_GET['uid']) ? $_GET['uid'] : '';

    include 'conn.php';
    
    $sql3 = "INSERT INTO gwc(pid,name,price,img,uid,num) (SELECT id,name,price,img,$uid,$num FROM list WHERE id='$pid')";
    $res3 = $conn->query($sql3);
 
    echo json_encode($res3,JSON_UNESCAPED_UNICODE);

?>