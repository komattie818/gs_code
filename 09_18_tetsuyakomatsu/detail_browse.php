<?php

$id = $_GET["id"]; //?id~**を受け取る
include("funcs.php");
$pdo = db_conn();

//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table WHERE id=:id");
$stmt->bindValue(":id",$id,PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示
if($status==false) {
    sql_error();
}else{
    $row = $stmt->fetch();
}
?>



<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>あなたの本の履歴更新</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <a class="navbar-brand">編集画面</a>
    <a class="navbar-brand" href="select_browse.php">本の履歴へGO</a>
    <a class="navbar-brand" href="login.php">編集するならログインし〜て〜ねぇ〜😄</a>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="POST" action="update.php">
  <div class="jumbotron">
   <fieldset>
    <legend>[編集]</legend>
    <label><p>名前</p><input type="text" name="bookname" value="<?=$row["bookname"]?>"></label><br>
     <label><p>書籍URL</p><textArea name="bookurl" rows="1" cols="40"><?=$row["bookurl"]?></textArea></label><br>
     <!-- <label><p>書籍コメント</p><textArea name="bookcomment" rows="4" cols="40"><?=$row["bookcomment"]?></textArea></label><br> -->
     <input type="submit" value="送信">
     <input type="hidden" name="id" value="<?=$id?>">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
