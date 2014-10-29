<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 侧边栏导航
 * User: Durban
 * Date: 14-9-24
 * Time: 下午3:36
 */
class Menu extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    /**
     * 获取后台菜单列表
     * @return type
     */
    public function getMenuList() {
        $str = '';
        $menu = $this->getMenuArray();
        $this->recursionInfo($menu, $str);
        return $str;
    }

    /**
     * 获取后台菜单下拉列表
     * @return type
     */
    public function getMenuOption($selected = 0) {
        $str = '';
        $menu = $this->getMenuArray();
        $this->recursionOption($menu, $str, $selected);
        return $str;
    }

    /**
     * 获取所有菜单按复类分组
     * @return array
     */
    public function getMenuArray() {
        $this->db->order_by('sort','ASC');
        $this->db->order_by('id','DESC');
        $query = $this->db->get('menu');
        $list = $query->result_array();

        $return_arr = array();
        foreach ($list as $v) {
            $return_arr[$v['sub']][$v['id']] = $v;
        }
        return $return_arr;
    }

    /**
     * 获取信息列表
     * @param type $menu
     * @param string $str
     * @param type $parents
     * @param type $floor
     * @param type $css
     */
    public function recursionInfo($menu, &$str, $parents = 0, $floor = 0, $css = '', $key = '') {
        global $baseurl;
        if (isset($menu[$parents])) {
            foreach ($menu[$parents] as $v) {
                if ($v['sub']) {
                    $css.=" child_{$v['sub']}";
                }
                $stype = isset($menu[$v['id']]) ? 'menu_filed_an' : 'menu_filed';
                $class = $v['topkey'] ? $v['topkey'] : $key;
                $action = $v['mkey'];

                $link = !isset($menu[$v['id']]) ? site_url('admin/'.$class.'/'.$action) : '';

                $str .= "<tr class='listTr {$css}'><td class='td2' align='center'><input type='checkbox' name='id[]' value='{$v['id']}' /></td>
                    <td class='td2' align='center'>" . ($v['isopen'] == 1 ? '<span class="s3">是</span>' : '否') . "</td>
                    <td class='td2'><div class='{$stype}' rel='{$v['id']}'><i " . ($floor ? 'style="margin-left:' . (30 * $floor) . 'px;"' : '') . "></i><b title='点击收起子类'></b><input type='text' id='sort' class='input input_wb' name='sort[]' value='{$v['sort']}'>{$v['name']}</div></td>
                    <td class='td2' align='center'>{$v['mkey']}</td>
                    <td class='td2'><a target='_blank' href='{$link}'>{$link}</a></td>
                    <td class='td2 adminDoBoxs' align='center'><a title='编辑' href='".site_url('admin/navmenu/edit/'.$v['id'])."' class='editBtns'>&nbsp;</a><a title='删除' onClick='return confirm('您确认要删除该广告吗?');' class='deleteBtns' href='".site_url('admin/navmenu/del/'.$v['id'])."'>&nbsp;</a></td></tr>";
                $menu[$v['id']] && $this->recursionInfo($menu, $str, $v['id'], $floor + 1, $css, $v['mkey']);
            }
        }
    }

    /**
     * 获取所有菜单的下拉选项
     * @param type $menu
     * @param type $str
     * @param type $selected
     * @param type $parents
     * @param type $floor
     */
    public function recursionOption($menu, &$str, $selected, $parents = 0, $floor = 0) {
        if (isset($menu[$parents])) {
            $a = 1;
            foreach ($menu[$parents] as $v) {
                $icon = '';
                for ($i = 0; $i < $floor; $i++) {
                    $icon .= '│';
                }
                if ($v['sub']) {
                    $icon .= '├';
                }
                $str .= "<option value='{$v['id']}'";
                if ($v['id'] == $selected) {
                    $str .=' selected';
                }
                $str .=">{$icon}{$v['name']}</option>";
                $menu[$v['id']] && $this->recursionOption($menu, $str, $selected, $v['id'], $floor + 1);
                $a ++;
            }
        }
    }

    public function recursion($menu, &$subcate, $parents = 0, $key = '') {

        if (isset($menu[$parents])) {
            foreach ($menu[$parents] as $k => $v) {
                if ($v['sub'] == $parents) {
                    $v['allow'] = $key ? (($v['topkey'] ? $v['topkey'] : $key) . "_" . $v['mkey'] ) : $v['mkey'];
                    $subcate['subcate'][$v['id']] = $v;

                    if(isset($menu[$v['id']]) && isset($subcate['subcate'][$v['id']]) && isset($v['id'])){
                        $menu[$v['id']] && $this->recursion($menu, $subcate['subcate'][$v['id']], $v['id'], $v['mkey']);
                    }
                }
            }
        }
    }

    public function getAllList() {
        $subcate = array();
        $menu = $this->getMenuArray();
        $this->recursion($menu, $subcate[0]);
        $return_arr = array();
        foreach ($subcate[0]['subcate'] as $v) {
            $return_arr[$v['mkey']] = $v;
        }
        return $return_arr;
    }

    public function getLevelById($id, $field){
        $this->db->where('id = '.$id);
        $this->db->select($field);
        $query = $this->db->get('menu');
        $row = $query->result_array();
        if($row){
            return $row[0];
        }
        return false;

    }

    /**
     *
     * 添加菜单
     * @param type $data
     * @return type
     */
    public function insert($data) {
        $this->db->insert('menu',$data);
        return $this->db->insert_id();
    }

    /**
     * 编辑菜单
     * @param type $data
     * @param type $id
     * @return boolean
     */
    public function update($data, $id) {
        $this->db->update('menu', $data, 'id in (' . $id . ')');
        return true;
    }


    /**
     * 批量删除菜单
     * @param type $id
     * @return boolean
     */
    public function delete($id) {
        $this->db->delete('menu', 'id in (' . $id . ')');
        return true;
    }
}