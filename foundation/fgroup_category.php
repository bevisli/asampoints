<?php
/**
 * 将分类组合
 * 将子级分类压入父级分类的['child']键名下
 * @param  array 	$array      需要组合的数组
 * @param  string   $parent_id  父级ID关联键名
 * @param  string   $now_id     分类ID键名
 * @param  int 	 	$val 		父级ID的值/默认为0
 * @return array                组合后的数组
 */
function group_category($array,$parent_id,$now_id,$val=null)
{
	if(!is_string($parent_id) || !is_string($now_id)){
		return "参数".$parent_id."或者".$now_id."不是字符串类型！";
	}
	if($val == null){
		$val = 0;
	}elseif(!intval($val)){
		return "参数".$val."不是整型！";
	}
	$cate_arr = array();
	if(is_array($array) && !empty($array)):
		foreach ($array as $value):
			if($value[$parent_id] == $val){
				$cate_arr[$value[$now_id]] = $value;
			}else{
				$cate_arr[$value[$parent_id]]['child'][]=$value;
			}
		endforeach;
		return $cate_arr;
	else:
		return "参数".$array."不是数组或者值为空！";
	endif;
}
/**
 * 获取子级分类
 * @param  [type]  $arr       [description]
 * @param  integer $parent_id [description]
 * @return [type]             [description]
 */
function get_child_category ($arr,$parent='parent_id',$parent_id=0)
{
	$array = array();
	if(is_array($arr)){
		foreach ($arr as $value) {
			if($value[$parent] == $parent_id){
				$array[] = $value;
			}
		}
	}
	return $array;
}
?>