<?

 /**
  * @package ALL
  */

/**
 * ���������� ������������ �����
 * @uses Select
 * @uses outTree
 *

 * @version 1.03 - 01.08.2007 14:45
 *
 * .01 ����������� Pager �������� ����� initBorder() - ��������� �� ��������� <br>
 * .01 �������� ����� PagerQuery extends Pager <br>
 * .02 ��������� ���� � ������������ �� ������ �������� �� ������� <br>
 * .03 ������� �������� -  ��, ��� �� ��������� (��� /cp/0)
 *
 */
 class Pager {
   var  $allCount = 0,
        $table,       //������� � ������� ����������� �������
        $count,       //����� ������� �� ��������
        $jumpValue = null,   //�������� � ������� �� ������� ���� �������
        $curPage,
        $field;

   /**
    * ������
    *
    * @var Select
    */
   var $r;

   /**
    * c ����� ������� ����������
    *
    * @var int
    */
   var $startIndex = 0;

   /**
    * ����� ���� Pager
    *
    * @var outTree
    */
   var $ot;


   /**
   * @param Db $_db ����������� � ���� ������
   * @param string $_table ��� �������
   * @param int $_count ���������� ������� �� ��������
   * @param int $_curPage ����� �������� ����������
   * @param mixed $_jumpValue �������� ���� ������, ������� ���������� (������������ $_curPage)
   * @param string $_where �������
   * @param string $_order �������
   * @param string $_field ��� ����, �� ��������� $_jumpValue �������� ���������� ���������.
   * @return Pager
   */
   function Pager($_db,$_table,$_count = 10,$_curPage = 0,$_jumpValue,$_where,$_order,$_field='id',$myquery='') {
      $this->db = $_db;
      $this->table = $_table;
      $this->count = $_count;
      $this->curPage = $_curPage;
      $this->jumpValue = $_jumpValue;
      $this->field = $_field;
      if ($myquery!=='') $r = new Select($this->db,$myquery);
      //echo 'select * from '.$this->table.($_where ? ' where '.$_where: '').($_order ? ' order by '.$_order: '');
      else $r = new Select($this->db,'select * from '.$this->table.($_where ? ' where '.$_where: '').($_order ? ' order by '.$_order: ''));
             $this->r = &$r;
      $this->initBorder();
   }

   /**
    * ���������� ������� �������
    */
   function initBorder() {
             $r = &$this->r;
      $this->allCount = $r->num_rows;
      if (isset($this->jumpValue)) {
          while ($r->next_row()) {

             if ($this->jumpValue==$r->result($this->field) ) {
                $this->curPage=intval($r->result_row/$this->count);
                $this->curLine=$r->result_row%$this->count;
                break;
             }
          }
       }

       if ($this->allCount) {
            if ($this->curPage > ($curpage = floor(($this->allCount-1)/$this->count)) )
                    $this->curPage = $curpage;
                if ($this->curPage<0)
                        $this->curPage=0;

            $this->startIndex = $r->result_row = $this->curPage*$this->count-1;
            $r->end = $this->endIndex = $this->startIndex+$this->count;
       }
   }

    /**
     * �������������� ���� ���� Pager � $ot
     * @param string $href ����� �������� ������
     * @param bool $SA ���������� ������ ������� ��������
     * @param bool $asGET ������������ �������� ����� ������ GET  (� �� ���) - ����� � BACK
     * @return bool ����������������� ��� ���
     */
    function initPAGER($href = '', $SA = null, $asGET = false) {
                if ( $this->allCount/$this->count > 1 ) {

          $strcp = isset($asGET) ? '?cp=' : '/cp/' ;
          $strcp0 = isset($asGET) ? '?cp=0' : '' ;
          $pager = new outTree();
          $c_p = $this->allCount/$this->count;

          for ($i=0; $i < $c_p; $i++) {
               // echo $href.($i ? $strcp.$i : $strcp0)."<br>";
               $sub = new outTree();
               $sub->addField('T', ( $i == $this->curPage ? ($SA ? 'SA' :'S') : 'A' ) );
               $sub->addField('href', $href.($i ? $strcp.$i : $strcp0));
               $sub->addField('page', $i+1);
               if ($i < ($c_p-1))
                  $sub->addField('separator', '');
               $sub->ITEMTYPE = $sub->T;
               $pager->addField('sub',$sub);
               unset($sub);
          }

          if ($this->curPage > 0) {
              $page = $this->curPage-1;
              $pager->addField('prev', $href.($page ? $strcp.$page : $strcp0));
              $pager->addField('init_prev', '');
          }

          if ( ($this->curPage+1)<($this->allCount/$this->count) ) {
              $page = $this->curPage+1;
              $pager->addField('next', $href.($page ? $strcp.$page : $strcp0) );
              $pager->addField('init_next', '');
          }

          $pager->addField('pages', '');

       }

       if (isset($pager)) {
                       $this->ot = &$pager;
                       return true;
       }

       return false;
    }

    /**
     * ��������� ����� ���� Pager � ������
     *
     * @param outTree $tree ������
     * @param string $field ��� ����, � ����� ���������
     */
    function addPAGER(&$tree,$field = 'pager') {
            if (isset($this->ot))
                    $tree->addField($field,$this->ot);
    }

    /**
     * ����������� ������� ��� �������� ������� Pager
     * � ������������� ������ �������
     * (���������� �������� �� ���� 'id')
     *
     * @return Pager
     */
    function &newPager(&$_db,$_table,$_count = 10,$_curPage = 0,&$param) {

                if (strlen($param['query']) >0) {

                     $pg = new Pager($_db,$_table,$_count,$_curPage,$param['jumpValue'],$param['where'],$param['order'],'id',$param['query']);
                }
                else
                $pg = new Pager($_db,$_table,$_count,$_curPage,$param['jumpValue'],$param['where'],$param['order']);
                if ($pg->allCount) {
                        $pg->initPAGER($param['href'],$param['SA'],$param['asGET']);
                        return $pg;
                }
                return null;
         }


  }

 /**
  * �������� � ������� ��������
  */
 class PagerQuery extends Pager {

   /**
    * ������
    *
    * @var Select
    */
   var  $r;

   /**
    *
    * @param Select $_r ������� ������ � ����
    * @param int $_count ���������� ������� �� ��������
    * @param int $_curPage ��������, ������� ����������
    * @param mixed $_jumpValue �������� ���� ������, ������� ���������� (������������ $_curPage)
    * @param string $_field ��� ����, �� ��������� $_jumpValue �������� ���������� ���������.
    * @return PagerQuery
    */
        function PagerQuery(&$_r,$_count = 10,$_curPage = 0,$_jumpValue,$_field='id') {
      $this->count = $_count;
      $this->curPage = $_curPage;
      $this->jumpValue = $_jumpValue;
      $this->r = &$_r;
      $this->initBorder();
        }


    /**
     * ����������� ������� ��� �������� ������� PagerQuery
     * � ������������� ������ �������
     * (���������� �������� �� ���� 'id')
     *
     * @return PagerQuery
     */
         function &new_(&$r,$_count,$_curPage,&$param) {
                 $pg = new PagerQuery($r,$_count,$_curPage,$param['jumpValue']);
                if ($pg->allCount) {
                        $pg->initPAGER($param['href'],$param['SA'],$param['asGET']);
                        return $pg;
                }
                return null;
         }
 }

 /**
  * ������������ ������������ ����� ��������� ������������
  */
 class Pagers {

         /**
         * ��������������� �� ���� sort
          */
    function &So(&$_db,$_table,$_count = 10,$_curPage = 0,$href,$SA = null,$_jumpValue=null) {
            return Pager::newPager($_db,$_table,$_count,$_curPage,
                      $ar=array('href'=>$href,
                                               'SA'=>$SA,
                                               'jumpValue'=>$_jumpValue,
                                               'order'=>'sort',
                                               'where'=>'pabl="1"'
                                               ));
         }
   function &PrSoZakup(&$_db,$_table,$where,$_count = 10,$_curPage = 0,$href,$field,$order,$SA = null,$_jumpValue=null) {
            return Pager::newPager($_db,$_table,$_count,$_curPage,
                      $ar=array('href'=>$href,
                                               'SA'=>$SA,
                                               'jumpValue'=>$_jumpValue,
                                               'order'=>$field.' '.$order,
                                               'where' => $where
                                               ));
         }
         /**
         * ��������������� �� ���� sort � ��������������� �� ���� parent
          */
    function &PrSo(&$_db,$_table,$_parent,$_count = 10,$_curPage = 0,$href,$SA = null,$_jumpValue=null) {
            return Pager::newPager($_db,$_table,$_count,$_curPage,
                      $ar=array('href'=>$href,
                                               'SA'=>$SA,
                                               'jumpValue'=>$_jumpValue,
                                               'order'=>'sort',
                                               'where' => 'pabl="1" AND parent="'.$_parent.'"'
                                               ));
         }

       function &PrSoCt(&$_db,$_table,$_parent,$_count = 10,$_curPage = 0,$href,$field,$order,$SA = null,$_jumpValue=null) {
            return Pager::newPager($_db,$_table,$_count,$_curPage,
                      $ar=array('href'=>$href,
                                               'SA'=>$SA,
                                               'jumpValue'=>$_jumpValue,
                                               'order'=>$field.' '.$order,
                                               'where' => 'pabl="1" AND parent="'.$_parent.'"'
                                               ));
         }

      function &PrSoSearch(&$_db,$_table,$where,$_count = 10,$_curPage = 0,$href,$field,$order,$SA = null,$_jumpValue=null) {
            return Pager::newPager($_db,$_table,$_count,$_curPage,
                      $ar=array('href'=>$href,
                                               'SA'=>$SA,
                                               'jumpValue'=>$_jumpValue,
                                               'order'=>$field.' '.$order,
                                               'where' => 'pabl="1" '.$where
                                               ));
         }

         /**
         * ��������������� �� ���� datetime desc
          */
         function &Da(&$_db,$_table,$_count = 10,$_curPage = 0,$href,$SA = null,$_jumpValue=null) {
            return Pager::newPager($_db,$_table,$_count,$_curPage,
                      $ar=array('href'=>$href,
                                               'SA'=>$SA,
                                               'jumpValue'=>$_jumpValue,
                                               'order' => 'datetime desc',
                                               'where'=>'pabl="1"'
                                               ));
         }
 }

?>
