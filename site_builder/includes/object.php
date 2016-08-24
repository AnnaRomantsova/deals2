<?php
//

 
class object {
 var $place; 
 var $table;
 var $db;

   /** инициализация класса  */
 function object($_db,$place,$table) {



 	 
     $this->db = &$_db;
     $this->table = $table;
     $this->place = $place;
    // echotree($db);

 }

   function get_value($id,$field){
       $r = new Select($this->db,"select $field from ".$this->table." where id=$id");
       if ($r->next_row()) {
           return $r->result($field);
       } return null;
   }

  /*добавляет данные*/
  function put_data($field_name,$parent=0,$sql='') {
     
        $r = new Select($this->db,"SHOW COLUMNS FROM ".$this->table);
        $f=null;
        while($r->next_row()) {
                     $f[] = $r->result('Field');
        }; 
        if ($parent >0) $wh = " and parent =$parent";
        if ($sql !=='') $wh.=" and $sql";
      //  echo "select * from ".$this->table." where 1=1 $wh" ;
       $r = new Select($this->db,"select * from ".$this->table." where 1=1 $wh" );
       while ($r->next_row()) {
               unset($sub);
               $sub = new outTree();
               foreach ($f as $field)   	                 
                   $sub->addField($field,$r->result($field)); 
               $this->place->addField($field_name,$sub);
       };
  }
  
  /*удаление записи*/
  function delete($id) {  
        $r = new Select($this->db,"delete FROM ".$this->table." where id=$id");       
  }
  
  function delete_by_parent($table,$id) {
  	$r = new Select($this->db,"delete FROM $table where parent=$id");
  }
  
  function add($post_values) {        
       $r = new Select($this->db,"SHOW COLUMNS FROM ".$this->table);
       $f=null;
       while($r->next_row()) {
                     $f[] = $r->result('Field');
       }; 
        
       $cols='';
       $values='';
       foreach ($post_values as $key => $val) {
          if (in_array($key,$f) ) {
              $cols .= ",$key";
              $values .= ",'$val'";
          }
       };
       $cols = substr($cols,1);
     //  $cols .= ',guid';
       $values = substr($values,1);
       //$values .= ',uuid()';
       $sql = "insert into ".$this->table." ($cols) values ($values)";
       $r = new Select($this->db,$sql);     
       return $this->db->insert_id();      
       
  }
  
  //добавляет в $this->place поля для форм редактирования или добавления записи, 
  //на вход подается массив $fields с настройками полей
  function add_fields($fields,$id=0,$field_name='tab_fields') {
  	$r = new Select($this->db,"SHOW COLUMNS FROM ".$this->table);
  	$f=null;
  	while($r->next_row()) {
  		$f[] = $r->result('Field');
  	};
  
  	if ($id>0) {
  	   $r = new Select($this->db,"select * from ".$this->table." where id=$id" );
  	   $r->next_row();
  	   foreach ($f as $field)
  	   	 $data[$field]=$r->result($field);  			
  	}
  	
    foreach ($fields as $v){
  			$sub = new outTree();
  			$sub->addField('fname',$v['fname']);
  			$sub->addField('rname',$v['rname']);
  			$sub->addField('type',$v['type']);
  			$sub->addField('length',$v['length']);
  			$sub->addField('id_cal',$v['id_cal']);
  			if (array_key_exists('const_value',$v)){ $sub->addField('value',$v['const_value']);  }
   			 else  if (array_key_exists($v['fname'],$data)) {$sub->addField('value',$data[$v['fname']]); };

  			if ($v['type'] =='list' && array_key_exists('list_table',$v)) {
  				//addSprav(&$sub,$v['list_table'],$data[$v['fname']],'list_table');
                //addSprav_sql(&$sub,$v['list_table'],'name',$data[$v['fname']],'list_table',$sort=$v['sort'],$v['where']);
                addSprav_wide($sub,$v['list_table'],$data[$v['fname']],'list_table',$v['where'],$sort=$v['sort']);

  			}
            if ($v['type'] =='date' && $sub->value!='') {
                //echo $v['fname'];
                //$sub->value =  make_date($data[$v['fname']],false,0);
                $sub->value =  make_date( $sub->value,false,0);
                //echo make_date($data[$v['fname']],false,0);
            }

  			$this->place->addField($field_name,$sub);
  			unset($sub);
  		}
  		  	// echotree($this->place->$field_name);
  }
  
  
  function edit($id,$field_name) {

        $r = new Select($this->db,"SHOW COLUMNS FROM ".$this->table);
        $f=null;
        while($r->next_row()) {
                     $f[] = $r->result('Field');
        }; 
        $r = new Select($this->db,"select * from ".$this->table." where id=$id" );
        if ($r->next_row()) { 
               unset($sub);
               $sub = new outTree();
               foreach ($f as $field)   	                 
                   $sub->addField($field,$r->result($field)); 
               
               $this->place->addField($field_name,$sub);
        };  
       //echotree($this->place);
  }
  
 function save_edit($id) {
        
       $r = new Select($this->db,"SHOW COLUMNS FROM ".$this->table);
       $f=null;
       while($r->next_row()) {
                     $f[] = $r->result('Field');
       }; 
        
       $cols='';
       $values='';
       foreach ($_POST as $key => $val) {
          if (in_array($key,$f) ) {
              
              $values .= ", $key = '$val'";
          }
       };
       $values = substr($values,1);
       $sql = "update ".$this->table." set $values where id=$id";
      
       $r = new Select($this->db,$sql);

       
  }

    function emptyDir($folder){
        $fp=opendir($folder);
        while ( $file = readdir($fp)){
            //echo $file;
            unlink($folder.$file);

        };
        closedir($fp);
    }

  function load_from_file($file,$fields,$id_compare){
        //$file=$_SERVER['DOCUMENT_ROOT'].'/'.$file;
        $file=$_FILES['file']['name'];

        $uploaddir= $_SERVER['DOCUMENT_ROOT']."/_files/upload/";
        $this->emptyDir('$uploaddir');
        $uploadfile = $uploaddir.$file;
   //   echo $_FILES['file']['tmp_name'];
    // var_dump($_FILES);
      // Копируем файл из каталога для временного хранения файлов:
      if ( move_uploaded_file($_FILES['file']['tmp_name'], $uploadfile))
        {
          echo "<h3>Файл успешно загружен на сервер</h3>";
        }
        else { echo "<h3>Ошибка! Не удалось загрузить файл на сервер!</h3>"; exit; }



      $doc=fopen($uploadfile,"r");

        $line = fgets($doc);
        $tfields =''; $vals ='';
        foreach($fields as $val) {
           $tfields .= ",$val";
        };

      $cnt=0;
      $tfields .=',date_create,status';
        while (!feof($doc)) {
            $vals='';

            $line = fgets($doc); //echo $line;
            if ($line=='') continue;
            $k=1;
            $line=explode(';',$line);

            foreach ($line as $val) {
                if  ($k==3 && $val!=='') $val = @mktime(0,0,0,substr($val,3,2),substr($val,0,2),substr($val,6));
                if ($k==$id_compare) {}
                //};
                $k++;
                $vals .= ",'$val'";
            };
            $vals.=",'".time()."','1'";

            $sql="select *  from ".$this->table." where number = '$line[0]' ";
           // echo $sql."<br>";
            $r = new Select($this->db,$sql);
            $r->next_row();
            if ($r->num_rows >0) continue;


            $sql="insert into ".$this->table."(".substr($tfields,1).") values (".substr($vals,1).") ";
            //echo $sql."<br>";
            $r = new Select($this->db,$sql);
            $cnt++;
        };
       return $cnt;

}
  
  
}


?>
