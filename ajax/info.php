<?php

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

$front_html_path='front/deals/';
$sh = $front_html_path.'ajax/info.html';
//var_dump($_POST);
if (!($_POST['id']>0)) die;
/*switch ($_POST['page']) {
    case "podbor": {$sh = $front_html_path.'ajax/podbor.html'; break;};
    case "prep": {$sh = $front_html_path.'ajax/prep.html';  break;};
    case "contrib": {$sh = $front_html_path.'ajax/contrib.html';  break;};
    case "contract": {$sh = $front_html_path.'ajax/contract.html';  break;};
}
*/
switch ($_POST['page']) {
    case "podbor": {
        $fields = array(array("fname" => 'number', "rname" => '� ���������', "type" => 'varchar', "length" => '255'),
            array("fname" => 'sposob', "rname" => '������ �������', "type" => 'varchar', 'list_table' => 'relate'),
            array("fname" => 'sposob', "rname" => '���', "type" => 'text'),
            array("fname" => 'name_etp', "rname" => '������������ ���', "type" => 'varchar'),
            array("fname" => 'srok_end_podach', "rname" => '���� ��������� ������ ������', "type" => 'varchar', 'list_table' => 'relate'),
            array("fname" => 'customer', "rname" => '������������ ���������', "type" => 'varchar'),
            array("fname" => 'inn_customer', "rname" => '��� ���������', "type" => 'varchar'),
            array("fname" => 'geographi', "rname" => '���������', "type" => 'varchar'),
            array("fname" => 'id_relate', "rname" => '������� �������', "type" => 'varchar', 'list_table' => 'relate'),
            array("fname" => 'price_lot', "rname" => '����', "type" => 'varchar'),
        );
        break;    }
    case "prep": { $fields = array(array("fname" => 'number', "rname" => '� ���������', "type" => 'varchar', "length" => '255'),
        array("fname" => 'sposob', "rname" => '������ �������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'sposob', "rname" => '���', "type" => 'text'),
        array("fname" => 'name_etp', "rname" => '������������ ���', "type" => 'varchar'),
        array("fname" => 'srok_end_podach', "rname" => '���� ��������� ������ ������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'customer', "rname" => '������������ ���������', "type" => 'varchar'),
        array("fname" => 'inn_customer', "rname" => '��� ���������', "type" => 'varchar'),
        array("fname" => 'geographi', "rname" => '���������', "type" => 'varchar'),
        array("fname" => 'id_relate', "rname" => '������� �������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'price_lot', "rname" => '����', "type" => 'varchar'),
    );  break;};
    case "contrib": { $fields = array(array("fname" => 'number', "rname" => '� ���������', "type" => 'varchar', "length" => '255'),
        array("fname" => 'sposob', "rname" => '������ �������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'sposob', "rname" => '���', "type" => 'text'),
        array("fname" => 'name_etp', "rname" => '������������ ���', "type" => 'varchar'),
        array("fname" => 'srok_end_podach', "rname" => '���� ��������� ������ ������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'customer', "rname" => '������������ ���������', "type" => 'varchar'),
        array("fname" => 'inn_customer', "rname" => '��� ���������', "type" => 'varchar'),
        array("fname" => 'geographi', "rname" => '���������', "type" => 'varchar'),
        array("fname" => 'id_relate', "rname" => '������� �������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'price_lot', "rname" => '����', "type" => 'varchar'),
        array("fname" => 'price_winner', "rname" => '���� ����������', "type" => 'varchar'),
        array("fname" => 'inn_winner', "rname" => '��� ����������', "type" => 'varchar'),
        array("fname" => 'name_winner', "rname" => '������������ ����������', "type" => 'varchar'),
    ); break;};
    case "contract": { $fields = array(array("fname" => 'number', "rname" => '� ���������', "type" => 'varchar', "length" => '255'),
        array("fname" => 'sposob', "rname" => '������ �������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'sposob', "rname" => '���', "type" => 'text'),
        array("fname" => 'name_etp', "rname" => '������������ ���', "type" => 'varchar'),
        array("fname" => 'srok_end_podach', "rname" => '���� ��������� ������ ������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'customer', "rname" => '������������ ���������', "type" => 'varchar'),
        array("fname" => 'inn_customer', "rname" => '��� ���������', "type" => 'varchar'),
        array("fname" => 'geographi', "rname" => '���������', "type" => 'varchar'),
        array("fname" => 'id_relate', "rname" => '������� �������', "type" => 'varchar', 'list_table' => 'relate'),
        array("fname" => 'price_lot', "rname" => '����', "type" => 'varchar'),
    ); break;};
};

$main = new outTree();
$table="deals";
$profile = new object($db,$main, $table);
$profile->add_fields($fields,$_POST['id']);
//$profile->put_data($numb,0,$sql=" id=$_POST[id]");
$main->addfield('number',$main->tab_fields[0]->value);

//echotree($main->tab_fields[0]);

 // var_dump($main);

   out::_echo($main,$sh);
?>