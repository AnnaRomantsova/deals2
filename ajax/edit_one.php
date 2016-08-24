<?php

// ?????? ?? ???????????
header('Content-type: text/html; charset=windows-1251');
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

$front_html_path='front/deals/';
$sh = $front_html_path.'ajax/edit_one.html';

if (!($_POST['id']>0)) die;

//var_dump($_POST);
$main = new outTree();
$table="deals";
$profile = new object($db,$main, $table);
$status_prep= $profile->get_value($_POST['id'],'status_prep');

$r1 = new Select($db,'select * from users where id="'.$_POST ['user_id'].'"');
if ($r1->next_row()) $user_name = $r1->result('name');

switch ($_POST['page']){
	case "podbor": {  $fields = array(
                        array("fname" => 'price_zaiav', "rname" => 'Цена заявки', "type" => 'varchar'),
                        //array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (1,2,3)' ),
                        array("fname" => 'uchastnik', "rname" => 'Наименование участника', "type" => 'list','list_table' => 'org', 'sort' =>'name', 'where' => ' ' ),
                        //array("fname" => 'comment', "rname" => 'Коментарий', "type" => 'text'),
                       // array("fname" => 'status', "rname" => 'статус', "type" => 'hidden', value=>'3'),
                        );

                        $hidden = array(
                                    array("fname" => 'status_prep', "rname" => 'статус подг', "type" => 'hidden', 'const_value'=>'2'),
                                    array("fname" => 'status', "rname" => 'статус', "type" => 'hidden', 'const_value'=>'3'),
                                    array("fname" => 'date_income', "rname" => 'дата', "type" => 'hidden', 'const_value'=>time()),
                                    array("fname" => 'responsible', "rname" => 'юзер', "type" => 'hidden', 'const_value'=>$user_name),
                        );
                        $topname="Для подготовки заявки на участие в закупке №".$profile->get_value($_POST['id'],'number')." укажите следующую информацию:";
                     break;};
    case "podbor_otkaz": {  $fields = array(
                             //array("fname" => 'price_zaiav', "rname" => 'Цена заявки', "type" => 'varchar'),
                             //array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (1,2,3)' ),
                             //array("fname" => 'status', "rname" => 'Наименование участника', "type" => 'list','list_table' => 'org', 'sort' =>'name', 'where' => ' ' ),
                             array("fname" => 'comment', "rname" => 'Причина отказа', "type" => 'text'),
                             );
                            $hidden = array(
                                   array("fname" => 'responsible', "rname" => 'юзер', "type" => 'hidden', 'const_value'=>$user_name),
                                   array("fname" => 'status', "rname" => 'статус', "type" => 'hidden', 'const_value'=>'2'),
                                   array("fname" => 'date_income', "rname" => 'дата', "type" => 'hidden', 'const_value'=>time()),
                            );
                             $topname="Закупка №".$profile->get_value($_POST['id'],'number')." будет отправлена в раздел Отказы. Укажите причину отказа от участия:";
                          break;};
   case "prep_otkaz": {  $fields = array(
                             //array("fname" => 'price_zaiav', "rname" => 'Цена заявки', "type" => 'varchar'),
                             //array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (1,2,3)' ),
                             //array("fname" => 'status', "rname" => 'Наименование участника', "type" => 'list','list_table' => 'org', 'sort' =>'name', 'where' => ' ' ),
                             array("fname" => 'comment', "rname" => 'Причина отказа', "type" => 'text'),
                             );
                             $hidden = array(
                                 array("fname" => 'status', "rname" => 'статус', "type" => 'hidden', 'const_value'=>'5'),
                                 array("fname" => 'date_income', "rname" => 'дата', "type" => 'hidden', 'const_value'=>time()),
                                 array("fname" => 'responsible', "rname" => 'юзер', "type" => 'hidden', 'const_value'=>$user_name),
                             );
                             $topname="Закупка №".$profile->get_value($_POST['id'],'number')." будет отправлена в раздел Отказы. Укажите причину отказа от участия:";
                          break;};
	case "prep": {  $fields = array(
                       // array("fname" => 'status_prep', "rname" => 'Статус подготовки', "type" => 'list','list_table' => 'status_prep', 'sort' =>'id',  ),
                       // array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (1,3,5)' ),
                       array("fname" => 'date_realiz', "rname" => 'Дата проведения', "type" => 'date'),
                        );
                        $hidden = array(
                                  array("fname" => 'status', "rname" => 'статус', "type" => 'hidden', 'const_value'=>'6'),
                        		  array("fname" => 'status_uch', "rname" => 'статус участия', "type" => 'hidden', 'const_value'=>'4'),
                                  array("fname" => 'status_prep', "rname" => 'статус подготовки', "type" => 'hidden', 'const_value'=>$status_prep),
                        );
                        $topname="Заявка на участие в закупке №".$profile->get_value($_POST['id'],'number')." будет отправлена в раздел Участие";
					  break;};
 case "contrib_status": {$fields = array(
                         array("fname" => 'status_uch', "rname" => 'Статус участия', "type" => 'list','list_table' => 'status_uch', 'sort' =>'id',  ),
                        // array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (6,3,7)' ),
                         array("fname" => 'price_winner', "rname" => 'Цена победителя (рубли, копейки)', "type" => 'varchar'),
                         array("fname" => 'inn_winner', "rname" => 'ИНН победителя', "type" => 'varchar'),
                          array("fname" => 'name_winner', "rname" => 'Наименование победителя', "type" => 'varchar'),
                     );

                      $topname="Укажите информацию о победителе: ";
                      $hidden_out_of_form = array(
                      		array("fname" => 'inn_winner_hid', "rname" => '', "type" => 'hidden', 'const_value'=>$profile->get_value($_POST['id'],'inn_winner')),
                      		array("fname" => 'uchastnic_hid', "rname" => '', "type" => 'hidden', 'const_value'=>get_sprav_val('org','name',$profile->get_value($_POST['id'],'uchastnik'))),
                      		
                      );
                     break;};
    case "prep_status": {$fields = array(
                             array("fname" => 'status_prep', "rname" => 'Статус подготовки', "type" => 'list','list_table' => 'status_prep', 'sort' =>'id',  ),
                         );

                          $topname="Статус подготовки заявки №".$profile->get_value($_POST['id'],'number')." ";

                         break;};
	case "contrib": {$fields = array(
                         //array("fname" => 'status_uch', "rname" => 'Статус участия', "type" => 'list','list_table' => 'status_uch', 'sort' =>'id',  ),
                         //array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (6,3,7)' ),
                        // array("fname" => 'comment', "rname" => 'Коментарий', "type" => 'text'),
                     );
                      $hidden = array(
                         array("fname" => 'status', "rname" => 'статус', "type" => 'hidden', 'const_value'=>'3'),
                      );

                      $topname="Закупка №".$profile->get_value($_POST['id'],'number')." будет отправлена в раздел Подготовка заявок. ";

                     break;};
    case "contrib_otkaz": {$fields = array(
                             //array("fname" => 'status_uch', "rname" => 'Статус участия', "type" => 'list','list_table' => 'status_uch', 'sort' =>'id',  ),
                            // array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (6,3,7)' ),
                             array("fname" => 'comment', "rname" => 'Коментарий', "type" => 'text'),
                         );
                      $hidden = array(
                         array("fname" => 'status', "rname" => 'статус', "type" => 'hidden', 'const_value'=>'7'),
                         array("fname" => 'date_income', "rname" => 'дата', "type" => 'hidden', 'const_value'=>time()),
                         array("fname" => 'responsible', "rname" => 'юзер', "type" => 'hidden', 'const_value'=>$user_name),
                      );
                          $topname="Закупка №".$profile->get_value($_POST['id'],'number')." будет отправлена в раздел Отказы. Укажите причину отказа от участия:";

                         break;};
     case "otkaz": { $fields = array();
                         $hidden = array(
                             array("fname" => 'status', "rname" => 'статус', "type" => 'hidden', 'const_value'=>'1'),
                             array("fname" => 'comment', "rname" => 'Коментарий', "type" => 'hidden', 'const_value'=>''),
                             array("fname" => 'date_income', "rname" => 'дата', "type" => 'hidden', 'const_value'=>''),
                             array("fname" => 'responsible', "rname" => 'юзер', "type" => 'hidden', 'const_value'=>''),
                             array("fname" => 'uchastnik', "rname" => 'юзер', "type" => 'hidden', 'const_value'=>''),
                             array("fname" => 'price_zaiav', "rname" => 'юзер', "type" => 'hidden', 'const_value'=>''),
                         );
                           $topname="Закупка №".$profile->get_value($_POST['id'],'number')." будет отправлена в раздел Подборка. Согласны?";
                        break;};
	case "contract": {$fields = array(
                        array("fname" => 'status_contract', "rname" => 'Статус контракта', "type" => 'list','list_table' => 'status_contract', 'sort' =>'id',  ),
                        array("fname" => 'number_contract', "rname" => 'Номер контракта', "type" => 'varchar' ),
                       // array("fname" => 'status', "rname" => 'Статус', "type" => 'list','list_table' => 'status', 'sort' =>'id', 'where' => ' where id in (6,8)' ),
                        array("fname" => 'comment', "rname" => 'Коментарий', "type" => 'text'),
                      );
                      $topname="Введите информацию о контракте:";
                      break;};

}

$main->addfield('id',$_POST['id']);
$main->addfield('topname',$topname);
$main->addfield('user_id',$_POST['user_id']);
$main->addfield('page',$_POST['page']);
$profile->add_fields($hidden_out_of_form ,$_POST['id'],'hidden_out_of_form');
$profile->add_fields($hidden,$_POST['id'],'hidden');
$profile->add_fields($fields,$_POST['id']);

if ($_POST['save']>0) {$profile->save_edit($_POST['id']);};


//$main->addfield('number',$main->tab_fields[0]->value);

//echotree($main->id);

 // var_dump($main);

   out::_echo($main,$sh);
?>