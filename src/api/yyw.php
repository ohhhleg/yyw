<?php
	
    //接收参数
    $pid=isset($_GET['pid']) ? $_GET['pid'] : '';
    // $num=isset($_GET['num']) ? $_GET['num'] : '';
    $uid=isset($_GET['uid']) ? $_GET['uid'] :'';
	
	//连接数据库
    include 'conn.php';
    

	$sql = "SELECT * FROM list ";//渲染数据
    $res = $conn->query($sql);
    $content = $res->fetch_all(MYSQLI_ASSOC);


    $sql2 = "SELECT * FROM gwc WHERE pid='$pid' AND uid='$uid'";
    $res2 = $conn->query($sql2);
    $content2 = $res2->fetch_all(MYSQLI_ASSOC);


    $data=array(
        "content"=>$content,
        "content2"=>$content2,
    );
    echo json_encode($data,JSON_UNESCAPED_UNICODE);

?>