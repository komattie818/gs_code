<?php

include("funcs.php");
$pdo = db_conn();

//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if($status==false) {
  sql_error();
}else{
  while( $r = $stmt->fetch(PDO::FETCH_ASSOC)){ 
    $view .= '<p>';
    $view .= '<a href="detail_browse.php?id='.$r["id"].'">';
    $view .= $r["id"]."<br>".$r["indate"]."<br>".$r["bookname"]."<br>".$r["bookurl"]."<br>".$r["bookcomment"]."<br>";
    $view .= '</a>';
    $view .= "　";
    if($_SESSION["kanri_flg"]=="1"){
    $view .= '<a class="btn btn-danger" href="delete.php?id='.$r["id"].'">';
    $view .= '[<i class="glyphicon glyphicon-remove"></i>削除]';
    $view .= '</a>';
  }
    $view .= '</p>';
  }
}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>あなたの本の履歴</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <?=$_SESSION["name"]?>
      <a class="navbar-brand">本の履歴</a>
      <a class="navbar-brand" href="login.php">登録するならログインし〜て〜ねぇ〜😄</a>

      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?=$view?></div>
</div>
<!-- Main[End] -->

</body>
</html>
