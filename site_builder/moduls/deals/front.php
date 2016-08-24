<?php

 include('config.php');
 include($inc_path.'/object.php');
 include($inc_path.'/myfunc.php');

 unset($main);
 //$sh_s = $front_html_path.'s.html';
 //$sh_i = $front_html_path.'orgs.html';

 include($inc_path.'/classes/class.BF.php');
 include($inc_path.'/admin_functions.php');


if ( !$_SESSION ['user']>0) header('Location: /');
//var_dump($_GET);
//echotree($site);
  $where='';

  switch ($site->pageid) {
  	case "podbor": {$sh = $front_html_path.'podbor.html'; break;};
  	case "prep": {$sh = $front_html_path.'prep.html';  break;};
  	case "contrib": {$sh = $front_html_path.'contrib.html';  break;};
  	case "contract": {$sh = $front_html_path.'contract.html';  break;};
  	case "otkaz": {$sh = $front_html_path.'otkaz.html';  break;};
  }
  $main = &addInCurrentSection($sh);
//фильтра
$fields = array ('date_create1','date_create2','srok_end_podach1','srok_end_podach2','price_lot1','price_lot2','price_zaiav1','price_zaiav2','date_realiz1','date_realiz2','date_income1','date_income2');

  foreach ($_GET as $key =>$val) {
		 if ( in_array($key,$fields) && strlen($val) >0 ) {
            switch ($key) {
                 case 'date_create1': {
                         $time ='00:00';
                         $date =$val;
                         $d=@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));    // echo $d1;die;
		                     $where.= " and date_create>='$d' ";
		                     break; };
                 case 'date_create2': {
                         $time ='23:59';
                         $date =$val;
                         $d=@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));
		                 $where .= " and date_create<='$d'  ";
                       //
                         break; };
				case 'date_income1': {
					$time ='00:00';
					$date =$val;
					$d=@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));    // echo $d1;die;
					$where.= " and date_income>='$d' ";
					break; };
				case 'date_income2': {
					$time ='23:59';
					$date =$val;
					$d=@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));
					$where .= " and date_income<='$d'  ";
					//
					break; };
				case 'date_realiz1': {
					$time ='00:00';
					$date =$val;
					$d=@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));    // echo $d1;die;
					$where.= " and date_realiz>='$d' ";
					break; };
				case 'date_realiz2': {
					$time ='23:59';
					$date =$val;
					//echo "hhhhhhhhh".substr($date,0,2)."/".substr($date,3,2)."/".substr($date,6);
					$d=@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));
					$where .= " and date_realiz<='$d'  ";
					//
					break; };
                  case 'srok_end_podach1': {

                                          $time ='00:00';
                                          $date =$val;
                                          $d=@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));    // echo $d1;die;
                 		                     $where.= " and srok_end_podach>='$d' ";
                 		                     break; };
                  case 'srok_end_podach2': {
                                          $time ='23:59';
                                          $date =$val;
                                          $d=@mktime(substr($time,0,2),substr($time,3,2),0,substr($date,3,2),substr($date,0,2),substr($date,6));
                 		                  $where .= " and srok_end_podach<='$d'  ";
                                        //
                                          break; };
				case 'price_lot1': {
										  $where.= " and cast( price_lot as unsigned)>='$val' ";
					                      break; };
				case 'price_lot2': {
					                      $where.= " and cast( price_lot as unsigned)<='$val' ";
					                      break; };
				case 'price_zaiav1': {
					$where.= " and cast( price_zaiav as unsigned)>='$val' ";
					break; };
				case 'price_zaiav2': {
					$where.= " and cast( price_zaiav as unsigned)<='$val' ";
					break; };
             };
              $main->addField($key,$val);
          };

   };

//echo $where;

$main->addField('page',$site->pageid);
switch ($site->pageid) {
	case "podbor": {$main->addField('pagename','Подборка');
                    $main->addField('object_name','Подборкb');  
                     break;};
	case "prep": {  $main->addField('pagename','Подготовка заявок');
					$main->addField('object_name','Подготовка заявок');  
					  break;};
	case "contrib": {$main->addField('pagename','Участие');
					 $main->addField('object_name','Участие');  
					  break;};
	case "contract": {$main->addField('pagename','Контракты');
					 $main->addField('object_name','Контракты');  
					 $sh = $front_html_path.'contract.html';  break;};
	case "otkaz": {$main->addField('pagename','Отказы');
                     $main->addField('object_name','Отказы');
                     $sh = $front_html_path.'otkaz.html';  break;};
                     }



$table = "deals";
   

if ($_POST['id']>0) {        
                  //нажали кнопку удалить одну запись
                  if ($_POST['del']>0){
                  	       delete($main,$db,$table);	                                              
	                       $main->addField('mode','mode_edit');
                  }
                  //нажали кнопку редактировать одну запись
                  else if ($_POST['edit']>0 && ($_POST['id']>0) ){
	                  	  edit_one($main,$db,$table);
	                  	  $main->addField('mode','mode_edit_one');
                  }
                  //нажали кнопку сохранить одну запись
                  else if ($_POST['save_submit']>0){
	                       save_edit($main,$db,$table);                    
	                       $main->addField('mode','mode_edit');
                  }
				  //инфо
				  else if ($_POST['info']>0){
					  info($main,$db,$table,$id);
					  $main->addField('mode','mode_show_one');
				  }
  }

  //создать новую запись
  else if ($_POST['new']>0){  	
			  		new_record($main,$db,$table);                    
			  		$main->addField('mode','mode_new');                      
  }
  //сохранить новую запись
  else if ($_POST['new_submit']>0){          
                   save_new_record($main,$db,$table);
                   $main->addField('mode','mode_edit');
  }
  else if ($_GET['i'] >0) $main->addField('mode','mode_show_one');
     else  $main->addField('mode','mode_edit');
  
  if ($main->mode=='mode_edit')                    
        edit_all($main,$db,$table,$where);


  $main->addfield('user_id',$_SESSION['user']);
 ///////////Основные функции   
     
   
  function delete($main,$db,$table){
  	   
	  	$profile = new object($db,$main, $table);
	  	$profile->delete($_POST['id']);
  };   
  
  function edit_one($main,$db,$table){
  	    
	  	$fields = array( array("fname" => 'name', "rname" => 'Наименование', "type" => 'varchar' ,"length" => '255' ),
	  			array("fname" => 'id_relate', "rname" => 'Тип клиента', "type" => 'list','list_table' => 'relate' ),
	  			array("fname" => 'responsible', "rname" => 'Ответственное лицо' , "type" => 'text' ),
	  			array("fname" => 'members', "rname" => 'Участники процесса' , "type" => 'text'),
	  			 
	  	);
	  	$profile = new object($db,$main, $table);	  	
	  	$profile->add_fields($fields,$_POST['id']);
	  	$profile->edit($_POST['id'],'sub');
  	
  };

  function info($main,$db,$table){
      global $site;
  	  $profile = new object($db,$main, $table);
  	  //echo "d";
	  switch ($site->pageid) {
		  case "podbor": {
			  $fields = array(array("fname" => 'number', "rname" => '№ извещения', "type" => 'varchar', "length" => '255'),
				  array("fname" => 'sposob', "rname" => 'Способ закупки', "type" => 'varchar', 'list_table' => 'relate'),
				  array("fname" => 'sposob', "rname" => 'Тип', "type" => 'text'),
				  array("fname" => 'name_etp', "rname" => 'Наименование ЭТП', "type" => 'varchar'),
				  array("fname" => 'srok_end_podach', "rname" => 'Срок окончания подачи заявок', "type" => 'varchar', 'list_table' => 'relate'),
				  array("fname" => 'customer', "rname" => 'Наименование заказчика', "type" => 'varchar'),
				  array("fname" => 'inn_customer', "rname" => 'ИНН заказчика', "type" => 'varchar'),
				  array("fname" => 'geographi', "rname" => 'География', "type" => 'varchar'),
				  array("fname" => 'predmet', "rname" => 'Предмет закупки', "type" => 'varchar', 'list_table' => 'relate'),
				  array("fname" => 'price_lot', "rname" => 'НМЦК', "type" => 'varchar'),
			  );
			  break;    }
		  case "prep": { $fields = array(array("fname" => 'number', "rname" => '№ извещения', "type" => 'varchar', "length" => '255'),
			  array("fname" => 'sposob', "rname" => 'Способ закупки', "type" => 'varchar', 'list_table' => 'relate'),
			  array("fname" => 'sposob', "rname" => 'Тип', "type" => 'text'),
			  array("fname" => 'name_etp', "rname" => 'Наименование ЭТП', "type" => 'varchar'),
			  array("fname" => 'srok_end_podach', "rname" => 'Срок окончания подачи заявок', "type" => 'varchar', 'list_table' => 'relate'),
			  array("fname" => 'customer', "rname" => 'Наименование заказчика', "type" => 'varchar'),
			  array("fname" => 'inn_customer', "rname" => 'ИНН заказчика', "type" => 'varchar'),
			  array("fname" => 'geographi', "rname" => 'География', "type" => 'varchar'),
			  array("fname" => 'id_relate', "rname" => 'Предмет закупки', "type" => 'varchar', 'list_table' => 'relate'),
			  array("fname" => 'price_lot', "rname" => 'НМЦК', "type" => 'varchar'),
		  );  break;};
		  case "contrib": { $fields = array(array("fname" => 'contract_number', "rname" => '№ контракта', "type" => 'varchar', "length" => '255'),
			  array("fname" => 'sposob', "rname" => 'Способ закупки', "type" => 'varchar', 'list_table' => 'relate'),
			  array("fname" => 'type', "rname" => 'Тип', "type" => 'varchar'),
			  array("fname" => 'name_etp', "rname" => 'Наименование ЭТП', "type" => 'varchar'),
			  array("fname" => 'srok_end_podach', "rname" => 'Срок окончания подачи заявок', "type" => 'varchar', ),
			  array("fname" => 'customer', "rname" => 'Наименование заказчика', "type" => 'varchar'),
			  array("fname" => 'inn_customer', "rname" => 'ИНН заказчика', "type" => 'varchar'),
			  array("fname" => 'geographi', "rname" => 'География', "type" => 'varchar'),
			  array("fname" => 'id_relate', "rname" => 'Предмет закупки', "type" => 'varchar', 'list_table' => 'relate'),
			  array("fname" => 'price_lot', "rname" => 'НМЦК', "type" => 'varchar'),
			  array("fname" => 'price_winner', "rname" => 'Цена победителя', "type" => 'varchar'),
			  array("fname" => 'inn_winner', "rname" => 'ИНН победителя', "type" => 'varchar'),
			  array("fname" => 'name_winner', "rname" => 'Наименование победителя', "type" => 'varchar'),
		  ); break;};
		  case "contract": { $fields = array(array("fname" => 'number', "rname" => '№ извещения', "type" => 'varchar', "length" => '255'),
			  array("fname" => 'responsible', "rname" => 'Ответственное лицо' , "type" => 'text' ),
			  array("fname" => 'number', "rname" => '№ извещения', "type" => 'varchar', "length" => '255'),
			  array("fname" => 'sposob', "rname" => 'Способ закупки', "type" => 'varchar', 'list_table' => 'relate'),
			  array("fname" => 'price_contract', "rname" => 'Цена контракта', "type" => 'varchar'),
			  array("fname" => 'sposob', "rname" => 'Тип', "type" => 'text'),
			  array("fname" => 'name_etp', "rname" => 'Наименование ЭТП', "type" => 'varchar'),
			  array("fname" => 'srok_end_podach', "rname" => 'Срок окончания подачи заявок', "type" => 'varchar', 'list_table' => 'relate'),
			  array("fname" => 'customer', "rname" => 'Наименование заказчика', "type" => 'varchar'),
			  array("fname" => 'inn_customer', "rname" => 'ИНН заказчика', "type" => 'varchar'),
			  array("fname" => 'geographi', "rname" => 'География', "type" => 'varchar'),
			  array("fname" => 'id_relate', "rname" => 'Предмет закупки', "type" => 'varchar', 'list_table' => 'relate'),
			  array("fname" => 'price_lot', "rname" => 'НМЦК', "type" => 'varchar'),
		  ); break;};
	  };
 //echo $_POST['id'];
	  $profile->add_fields($fields,$_POST['id']);
	  $main->addfield('number',$main->tab_fields[0]->value);
  // echotree($main);
    };
  
  function save_edit($main,$db,$table){  	
	  	$profile = new object($db,$main, $table);
	  	$profile->save_edit($_POST['id']);
  };
    
  function new_record($main,$db,$table) {  	  
	  	$fields = array( array("fname" => 'name', "rname" => 'Наименование', "type" => 'varchar' ,"length" => '255' ),
	  			array("fname" => 'id_relate', "rname" => 'Тип клиента', "type" => 'list','list_table' => 'relate' ),
	  			array("fname" => 'responsible', "rname" => 'Ответственное лицо' , "type" => 'text' ),
	  			array("fname" => 'members', "rname" => 'Участники процесса' , "type" => 'text'),
	  	
	  	);
	  	$profile = new object($db,$main, $table);
	  	$profile->add_fields($fields);
  };
  
  function save_new_record($main,$db,$table){  	
  	$profile = new object($db,$main, $table);
  	$profile->add($_POST);
  };
  
  function edit_all($main,$db,$table,$where){
  	global $site;

  	$profile = new object($db,$main,$table );
  	
  	$us = new object($db,null, 'users');
    $pabl= $us->get_value($_SESSION ['user'],'pabl');
   // if ($pabl==1) $main->addfield('pabl',$pabl);

  	switch ($site->pageid) {
  		case "podbor": {$wh=" status=1"; break;};
  		case "prep": { $wh=" status =3"; break;};
  		case "contrib": {$wh=" status =6"; break;};
  		case "contract": {$wh=" status =6 and status_uch=2";   break;};
  		case "otkaz": {$wh=" status in (2,5,7)";   break;};
  	}

  	$wh= $wh.$where;
    //echo $wh;
  	$profile->put_data('sub','',$wh);

  	$i=1;
  	if (is_array($main->sub))
  	   $arr=$main->sub;
  	else $arr = array($main->sub);
  	foreach ($arr as  $sub) {
  	   if ($pabl==1 && $sub<>null) $sub->addfield('pabl',$pabl);
	   foreach ($sub as  $key => $value) {
		  //if ($key=='status') $sub->status= get_sprav_val('status','name', $sub->status);

		  //  echo get_sprav_val('status','name',$sub->id);
		 // if ($key=='status') $sub->status1=get_sprav_val('status','name',$sub->status);
		  if ($key=='status_prep') $sub->status_prep=get_sprav_val('status_prep','name',$sub->status_prep);
		  if ($key=='status_uch') $sub->status_uch=get_sprav_val('status_uch','name',$sub->status_uch);
		  if ($key=='status_contract') $sub->status_contract=get_sprav_val('status_contract','name',$sub->status_contract);
		  if ($key=='date_create') $sub->date_create=make_date($sub->date_create,true,0);
		  if ($key=='date_realiz') $sub->date_realiz=make_date($sub->date_realiz,false,0);
		  if ($key=='date_income') $sub->date_income=make_date($sub->date_income,true,0);
		  if ($key=='srok_end_podach') $sub->srok_end_podach=make_date($sub->srok_end_podach,false,0);
		  //if ($key=='date_realiz') $sub->date_realiz=make_date($sub->date_realiz,false,0);
           if ($key=='uchastnik') $sub->uchastnik=get_sprav_val('org','name',$sub->uchastnik);
		  if ($key=='price_lot') $sub->price_lot=number_format($sub->price_lot, 2, '.', ' ');
		  if ($key=='price_winner') $sub->price_winner=number_format($sub->price_winner, 2, '.', ' ');
		  if ($key=='price_zaiav') $sub->price_zaiav=number_format($sub->price_zaiav, 2, '.', ' ');
		  if ($key=='itog_zaiav') $sub->itog_zaiav=number_format($sub->itog_zaiav, 2, '.', ' ');
		  if ($key=='price_contract') $sub->price_contract=number_format($sub->price_contract, 2, '.', ' ');
		 }
	}





  };
  //echotree($main);
 ?>