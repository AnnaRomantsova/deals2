<?php
header('Content-type: text/html; charset=windows-1251');
// ?????? ?? ???????????
header("Expires: Mon, 23 May 1995 02:00:00 GTM");
header("Last-Modified: ".gmdate("D, d M Y H:i:s")." GTM");
header("Cache-Control: no-cache, must-revalidate");
header("Pragma: no-cache");
//


//? ???? ????? ???????? ????? ? ?????? ? ??
require_once("../setup.php");
include_once($inc_path.'/db_conect.php');
include_once($inc_path.'/func.front.php');
include_once($inc_path.'/object.php');
include($inc_path.'/myfunc.php');




//var_dump($_POST);
$data=iconv("utf-8", "cp1251", $_POST['data']);
if (!($_POST['id']>0)) die;

$profile = new object($db,$main, 'deals');
//echo $profile->get_value($_POST['id'],'status');
//echo $_POST['price_zaiav'];
//случай если на Подборке переходят на статус "подготовка заявки"
if ($profile->get_value($_POST['id'],'status') <> 3 && $_POST['status-id'] ==3 && $_POST['page']=='podbor') {
    if ((int)$_POST['price_zaiav-id'] <=0) {echo "Внимание ошибка! Невозможно перейти на статус 'Подготовка заявки' с нулевой ценой заявки. Сначала укажите цену заявки."; die;};
   // $us = new object($db,null, 'users');
    //echotree($us);
   // $user_name= $us->get_value($_POST['user_id'],'name');
   // $ri = new Select($db,"update deals set date_income = ".time().", responsible='$user_name',status_prep=1 where id=$_POST[id]");
   // echo "Запись переходит на вкладку 'Подготовка заявок'";
   // echo "update deals set date_income = ".time().", responsible='$user_name',status=".$_POST['status-id'].",status_prep=1 where id=$_POST[id]";
};

//echo $_POST['price_zaiav-id'];
//if (!is_float($_POST['price_zaiav-id'])) {echo "Внимание ошибка, некорректный формат цены"; die;};
if ($_POST['status_prep-id']==2 && $_POST['status-id'] == 6 )
{echo "Внимание ошибка, при статусе подготовки 'не принята' заявка не может быть отправлена заказчику"; die;};

foreach ($_POST as $fi => $val)
{
   $val=iconv("utf-8", "cp1251", $val);
   $n=strpos($fi,'-id');
   if ( $n> 0 ) {
   	   if ($fi=='date_realiz-id'){
   	   	 // echo $val."--";echo substr($val,8,2)."/".substr($val,5,2)."/".substr($val,0,4);   	   
   	      $val= @mktime(0,0,0,substr($val,5,2),substr($val,8,2),substr($val,0,4)); 
   	   };
       $field= substr($fi,0,$n);
       $id= substr($fi,$n+3);
       $ri = new Select($db,"update deals set $field='$val' where id=$_POST[id]");
       //echo "update deals set $field='$val' where id=$_POST[id]";
   }
}
/*
if ($_POST['page']=='prep' && $_POST['status_prep-id']==3 ) {
   $ri = new Select($db,"update deals set status=6 where id=$_POST[id]");
   echo 'Запись переходит на вкладку  "Участие". ';
}
//echo $_POST['page'];

if ($_POST['page']=='contrib_status' && $_POST['status_uch-id']==2 ) {
   $ri = new Select($db,"update deals set status=8 where id=$_POST[id]");
   echo 'Запись переходит на вкладку  "Контракты". ';
}
*/
echo 'Запись успешно сохранена.';
//echotree($main->tab_fields[0]);

 // var_dump($main);


?>