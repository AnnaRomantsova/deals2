<?php

 include('config.php');
 include($inc_path.'/object.php');

 unset($main);
 $sh_profile = $front_html_path.'profile.html';
 $sh_orgs = $front_html_path.'orgs.html';

 include($inc_path.'/classes/class.BF.php');
 include($inc_path.'/admin_functions.php');


if ( !$_SESSION ['user']>0) header('Location: /');
 
   //  unset($main->content);
   
$main = &addInCurrentSection($sh_orgs); 
     
	 
    
if ($_POST['id']>0) {
        
                  //������ ������ ������� ���� ������
                  if ($_POST['del']>0){
                       $profile = new object($db,$main, 'organization');
                       $profile->delete($_POST['id']);
                        
                       $main->addField('mode','mode_edit');
                  }
                  //������ ������ ������������� ���� ������
                  else if ($_POST['edit']>0){
                        if ($_POST['id']>0)
                            $main->addField('mode','mode_edit_one');
                  }
                  //������ ������ ��������� ���� ������
                  else if ($_POST['save_submit']>0){
                       $profile = new object($db,$main, 'organization');
                       $profile->save_edit($_POST['id']);
                    
                       $main->addField('mode','mode_edit');
                  }
  }
  //������� ����� ������
  else if ($_POST['new']>0){
                        $main->addField('mode','mode_new');                      
  }
  //��������� ����� ������
  else if ($_POST['new_submit']>0){
          
                   $profile = new object($db,$main, 'organization');
                   $id = $profile->add($_POST);                                    
                   $main->addField('mode','mode_edit');
}
else if ($_GET['i'] >0) $main->addField('mode','mode_show_one');
           //  else $main->addField('mode','mode_show');
                //������ �� ��������
                else  $main->addField('mode','mode_edit');

     //����� ��������������� ����� ������
     if (($_POST['id']>0)&&($main->mode=='mode_edit_one')) {
                   $profile = new object($db,$main, 'organization');
                   $profile->edit($_POST['id'],'sub');
     //����� ��������������� ���� �������
     } else if ($main->mode=='mode_edit'){
     	
          if ($_GET['id']>0) {
            
              $profile = new object($db,$main, 'organization');
              $profile->put_data('sub',$_GET['id']);
          }
          else {
              
              $profile = new object($db,$main, 'organization' );
              $profile->put_data('sub');
              foreach ($main->sub as $sub) {
                foreach ($sub as $key => $value) {        
                  if ($key=='is_active') {
                      if ($value==1) $sub->is_active="��"; else $sub->is_active="���";
                      
                  }
                }
              }    
            
          }
       //   $main->addField('mode','mode_edit');
          $main->addField('pagename','�����������');
          $main->addField('object_name','�����������');
     	
     }
     //������ ����������
     else if ($main->mode=='mode_new') {
       
     }
     //����� ��������� ���� ��������
     else if (($main->mode=='mode_show')&&(!($_GET['i']>0)))
     {
          


    }
    //����� ��������� ����� �������
     else if (($main->mode=='mode_show_one')&&($_GET['i']>0)){
            $r = new Select($db,'select * from organization where id='.$_GET['i']);
            if ($r->next_row()) {

                    $profile = new object($db,$main, 'organization');
                   $profile->edit($_GET['i'],'sub');
            }
            else
                        header('Location: /error404');
            $r->unset_();

     }


// echotree($main);
  //echo $main->mode;
 ?>