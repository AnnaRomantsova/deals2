<?php
/**
 *  Классы и функции по обработке записей и выводу сущностей в шаблоны.
 */

//ini_set('display_errors', 1);error_reporting(E_ALL);
include ($inc_path.'/func.back.php');
include ($inc_path.'/classes/class.BF_P.php');
include($inc_path.'/object.php');
include($inc_path.'/myfunc.php');
header('Content-type: text/html; charset=windows-1251');

//сжтие картинки
 function image_resize($filename,$new_width,$new_height){

  //$filename=substr($filename,1);
  list($width, $height) = getimagesize($filename);

  $ratio_orig = $width/$height;

  if ($new_width/$new_height > $ratio_orig) {
     $new_width = $new_height*$ratio_orig;
  } else {
     $new_height = $new_width/$ratio_orig;
  }

  $image_p = imagecreatetruecolor($new_width, $new_height);
  $image = imagecreatefromjpeg($filename);
  imagecopyresampled($image_p, $image, 0, 0, 0, 0, $new_width, $new_height, $width, $height);
  imagejpeg($image_p, $filename, 100); //50% это качество 0-100%
 };


class B_news_ {

    function saveNewRecord(&$_this,&$values) {

        $time = &$values['timed'];
        $date = &$values['date'];
        //$time = &$values['time'];

        $date = &$values['date_create'];
        if ($date !=='') $values['date_create'] = @mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));

        $date = &$values['date_income'];
        if ($date !=='') $values['date_income'] = @mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));

        $date = &$values['srok_end_podach'];
        if ($date !=='') { $values['srok_end_podach'] = @mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6)); echo "s";};
       // var_dump($values);
        BF_::saveNewRecord($_this,$values);
    }

  function saveRecord(&$_this,&$values,$id) {

       $time = &$values['timed'];
       $date = &$values['date'];
       //$time = &$values['time'];

       
       $date = &$values['date_create'];
       if ($date !=='') $values['date_create'] = @mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));

       $date = &$values['date_income'];
       
       if ($date !=='') {$values['date_income'] = @mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6)); echo "2"; die;};

       $date = &$values['srok_end_podach'];
       if ($date !=='') $values['srok_end_podach'] = @mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));
      // var_dump($values);
       BF_::saveRecord($_this,$values,$id);
 }

 function redactValues(&$_this,&$values) {
         $time = &$values['time'];
         $date = &$values['date'];
    $values['datetime'] = @mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));
    if (empty($values['title']))
            $values['title'] = $values['name'];
        B_::redactValues($_this,$values);
 }

 function addIfcAddRecord(&$_this,&$main) {
         $_FILENAME = B_::addIfcAddRecord($_this,$main);
        // $main->addField('date_create',date('d.m.Y'));
        // $main->addField('date_create',date('d.m.Y'));
        // $main->addField('time',date('H:i'));
         $profile = new object($this->db,$main, $this->table);

                       $fields = array(
                           array("fname" => 'date_create', "rname" => 'Дата добавления', "type" => 'date', "length" => '255','id_cal'=>1, 'const_value'=>time()),
                           array("fname" => 'date_income', "rname" => 'Дата поступления', "type" => 'date', "length" => '255','id_cal'=>2, 'const_value'=>''),
                           array("fname" => 'number', "rname" => '№ извещения', "type" => 'varchar', "length" => ''),
                           array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (1,3,6,7)'  ),
                           array("fname" => 'sposob', "rname" => 'Способ закупки', "type" => 'varchar', 'list_table' => 'relate'),
                           array("fname" => 'type', "rname" => 'Тип', "type" => 'varchar'),
                          // array("fname" => 'name_etp', "rname" => 'Наименование ЭТП', "type" => 'varchar'),
                           array("fname" => 'srok_end_podach', "rname" => 'Срок окончания подачи заявок', "type" => 'date','id_cal'=>3, 'const_value'=>''),
                           array("fname" => 'customer', "rname" => 'Наименование заказчика', "type" => 'varchar', "length" => '255'),
                           array("fname" => 'inn_customer', "rname" => 'ИНН заказчика', "type" => 'varchar'),
                           array("fname" => 'geographi', "rname" => 'География', "type" => 'varchar', "length" => '255'),
                           array("fname" => 'predmet', "rname" => 'Предмет закупки', "type" => 'text', ),
                           array("fname" => 'price_lot', "rname" => 'Цена лота', "type" => 'varchar'),
                       		array("fname" => 'price_zaiav', "rname" => 'Цена заявки', "type" => 'varchar'),
                           array("fname" => 'price_winner', "rname" => 'Цена победителя', "type" => 'varchar'),
                           array("fname" => 'inn_winner', "rname" => 'ИНН победителя', "type" => 'varchar'),
                           array("fname" => 'name_winner', "rname" => 'Наименование победителя', "type" => 'varchar', "length" => '255'),
                           array("fname" => 'comment', "rname" => 'Коментарий', "type" => 'text'),
                   );


         $profile->add_fields($fields,$id);

    //    $main->addField('preview',"loadFCKeditor('preview','');");
    addCalend($main,1);
    return $_FILENAME;
 }

 function addIfcEditRecord(&$_this,&$main,$id) {
    $_FILENAME = BF_::addIfcEditRecord($_this,$main,$id);


     $profile = new object($this->db,$main, $this->table);

             $fields = array(
                 array("fname" => 'date_create', "rname" => 'Дата добавления', "type" => 'date', "length" => '255','id_cal'=>1),
                 array("fname" => 'date_income', "rname" => 'Дата поступления', "type" => 'date', "length" => '255','id_cal'=>2),
                 array("fname" => 'number', "rname" => '№ извещения', "type" => 'varchar', "length" => ''),
                  array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (1,3,6,7)'  ),
                 array("fname" => 'sposob', "rname" => 'Способ закупки', "type" => 'varchar', 'list_table' => 'relate'),
                 array("fname" => 'type', "rname" => 'Тип', "type" => 'varchar'),
                 array("fname" => 'name_etp', "rname" => 'Наименование ЭТП', "type" => 'varchar'),
                 array("fname" => 'srok_end_podach', "rname" => 'Срок окончания подачи заявок', "type" => 'date','id_cal'=>3 ),
                 array("fname" => 'customer', "rname" => 'Наименование заказчика', "type" => 'varchar', "length" => '255'),
                 array("fname" => 'inn_customer', "rname" => 'ИНН заказчика', "type" => 'varchar'),
                 array("fname" => 'geographi', "rname" => 'География', "type" => 'varchar', "length" => '255'),
                 array("fname" => 'predmet', "rname" => 'Предмет закупки', "type" => 'varchar', 'list_table' => 'relate', "length" => '255'),
                  array("fname" => 'price_lot', "rname" => 'Цена лота', "type" => 'varchar'),
                 array("fname" => 'price_zaiav', "rname" => 'Цена заявки', "type" => 'varchar'),
                 array("fname" => 'price_winner', "rname" => 'Цена победителя', "type" => 'varchar'),
                 array("fname" => 'inn_winner', "rname" => 'ИНН победителя', "type" => 'varchar'),
                 array("fname" => 'name_winner', "rname" => 'Наименование победителя', "type" => 'varchar', "length" => '255'),
                 array("fname" => 'comment', "rname" => 'Коментарий', "type" => 'text'),
         );


     $profile->add_fields($fields,$id);



    $main->addField('date_create',date('d.m.Y', $main->datetime));
    $main->addField('date_income',date('d.m.Y', $main->date_income));
    $main->addField('srok_end_podach',date('d.m.Y', $main->srok_end_podach));
    $main->addField('time',date('H:i', $main->datetime));

   // $main->addField('about','addFCKeditor($GLOBALS["r"],"about");');
//    $main->addField('preview','addFCKeditor($GLOBALS["r"],"preview");');
    addCalend($main,1);
    addCalend($main,2);
    addCalend($main,3);
    return $_FILENAME;
 }

 function addSub(&$_this,&$sub,&$r,$param) {
         B_::addSub($_this,$sub,$r,$param);

         //$sub->addField('date',date('d.m.y, H i', $r->result('datetime')));

      //   $rs = new Select($_this->db,'select c.name as company,h.*,s.name as street from house h,company c, street s where c.id=h.id_company and s.id=h.id_street and h.id='.$r->result('id_house'));
       //  if ($rs->next_row())
        $r->addFields($sub,$ar=array('number','sposob','srok_end_podach','customer','inn_customer','price_lot','price_zaiav','status','date_income','responsible','date_create'));
        foreach ($sub as  $key => $value) {
             //if ($key=='status') $sub->status= get_sprav_val('status','name', $sub->status);

          //  echo get_sprav_val('status','name',$sub->id);
             if ($key=='status') $sub->status1=get_sprav_val('status','name',$sub->status);
             if ($key=='date_create' && $sub->date_create !=='') $sub->date_create=make_date($sub->date_create,false,0);
             if ($key=='date_income' && $sub->date_income!=='') $sub->date_income=make_date($sub->date_income,false,0);

             if ($key=='srok_end_podach' && $sub->srok_end_podach >0) $sub->srok_end_podach=make_date($sub->srok_end_podach,false,0);
             if ($key=='date_realiz' &&  $sub->date_realiz !=='') $sub->date_realiz=make_date($sub->date_realiz,false,0);
         }




  }

 function &getParamMngr(&$_this) {

         $param = &BP_::getParamMngr($_this);
         //$param['order'] = 'datetime desc,id_house desc';
        // $param['where'] = ' ntype=1';
         return $param;
 }

    function addManager(&$_this,&$main)
    {

    //   var_dump($_FILES);
        if ($_POST['load'] == 1 && $_POST['file'] !== '') {
            $fields = array('number','sposob','srok_end_podach','customer','inn_customer','geographi','price_lot','link');
           $profile = new object($_this->db, $main, 'deals');
           $cnt = $profile->load_from_file($_GET['file'],$fields);
           echo "<h3>Загружено $cnt записей</h3>";
        };

        if ($_GET['id']>0) $main->addField('id',$_GET['id']);
        return B_::addManager($_this,$main);
    }
}

class B_news extends BF_P {

 function redactValues(&$values) {
         B_news_::redactValues($this,$values);
 }

 function addIfcAddRecord(&$main) {
         return B_news_::addIfcAddRecord($this,$main);
 }

 function addIfcEditRecord(&$main,$id) {
         return B_news_::addIfcEditRecord($this,$main,$id);
 }

 function addSub(&$sub,&$r,$param) {
           B_news_::addSub($this,$sub,$r,$param);
 }

 function &getParamMngr() {
           return B_news_::getParamMngr($this);
 }

  function saveNewRecord(&$values) {
        B_news_::saveNewRecord($this,$values);
    }

  function saveRecord(&$values,$id) {
         B_news_::saveRecord($this,$values,$id);
 }
    function addManager(&$main) {
        return B_news_::addManager($this,$main);
    }
}

?>
