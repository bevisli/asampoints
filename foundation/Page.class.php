<?php
/**
 * @package foundation
 * @author cjw <cjwindex13@gmail.com>
 * @date_create 2013-09-23
 */
class Page
{
	public $total;//数据总的条数
	public $pageRow;//每页显示的数据条数
	private $pageTotal;//页码总数
	private $pageDisplay;//显示的页码数
	private $self;//当前页面值
	private $url;//当前url地址
	private $pagePre = "上一页";//上一页
	private $pageNext = "下一页";//下一页
	function __construct ($total,$pageRow = 10,$pageDisplay = 8){
		$this->total = $total;//总数
		$this->pageRow = $pageRow;//显示数
		$this->pageDisplay = $pageDisplay;//显示页码
		$this->pageTotal = ceil($this->total/$this->pageRow);//计算总页码
		$this->self = isset($_GET['page']) ? min($this->pageTotal,(int) $_GET['page']) : 1;//获取当前页面值
		$this->url = $this->getUrl();
	}
	/**
	 * 获得Url地址
	 * @return [type] [description]
	 */
	private function getUrl (){
		$url = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['SCRIPT_NAME'];
		$param = '';
		unset($_GET['page']);
		foreach($_GET as $k=>$v){
			$param .=$k.'='.$v.'&'; 
		}
		$param = $url.'?'.rtrim($param,'&').'&page=';
		return $param;
	}
	/**
	 * 计算页码起始、结束值，当前值居中
	 * @return [type] [description]
	 */
	private function pageList (){
		$nums = min($this->pageTotal,$this->pageDisplay);//显示页码数
		$avg = ceil($this->pageDisplay / 2);//当前页面值居中
		$start = max(1,min($this->self - $avg,$this->pageTotal - $nums));//起始页码值
		$end = max($start + $nums,$nums);//结束页码值
		return $this->assemblyTag($start,$end);
	}
	/**
	 * 组合页码标签
	 * @param  integer $start 	起始页
	 * @param  integer $end   	结束页
	 * @return string        	组合标签
	 */
	private function assemblyTag ($start,$end){
		$str = '';
		if($this->self > 1){//当前页大于1时显示【上一页】连接
			$str .= '<a href="'.$this->url.($this->self - 1).'">&lt;&lt;'.$this->pagePre.'</a>';
		}
		if($start > 2){//起始页大于2时显示省略符号
			$str .= '<a href="'.$this->url.'1">1</a><span style="border:none;padding:0;background:none;">...</span>';
		}
		//循环组合标签
		for ($i = $start; $i < $end; $i++) { 
			if($i == $this->self){
				$str .= '<span>'.$i.'</span>';
				continue;
			}
			$str .= '<a href="'.$this->url.$i.'">'.$i.'</a>';
		}
		if($this->pageTotal > $this->pageDisplay){
			$str .= '<span style="border:none;padding:0;background:none;">...</span><a href="'.$this->url.$this->pageTotal.'">'.$this->pageTotal.'</a>';
		}
		if($this->self < $this->pageTotal - 1){
			$str .= '<a href="'.$this->url.($this->self + 1).'">'.$this->pageNext.'&gt;&gt;</a>';
		}
		return $str;
	}
	/**
	 * SQL的limit语句
	 * @return 从哪条数据开始截取，每次截取多少条数据
	 */
	public function limit (){
		$start = ($this->self - 1) * $this->pageRow;
		return $start.",".$this->pageRow;
	}
	/**
	 * 外部调用页码接口
	 * @return [type] [description]
	 */
	public function show (){
		return $this->pageList();
	}
}