<?php
	if(!$HUISHI_SOFT_IN) {
		die('Hacking attempt');
	}

	class cachearr{
		private $c;
		public function __construct()
		{
			global $scache;
			$this->c = $scache;
		}
		
		public function getcache($uid){
			$rs = $this->c->get($uid);
			//bug('get__'.$rs);
			$rs = unserialize($rs);
			if(!is_array($rs)) $rs = array();
			return $rs;
		}
		
		public function setcache($uid,$rs){
			$rs = serialize($rs);
			//bug('set__'.$rs);
			$this->c->set($uid,$rs);
		}
	}

	class cache{
		private $c;
		public function __construct()
		{
			global $scache;
			$this->c = $scache;
		}
		
		public function getcache($keys){
			$value = $this->c->get($keys);
			return $value;
		}
		
		public function setcache($keys,$value){
			$this->c->set($keys,$value);
		}
	}


	class ucmemcache {
		static $uc_mc;
		public $memcache;
		public function __construct($config)
		{
			//require_once 'db.class.php';
			ini_set('memcache.hash_function',$config['memcache_function']);   
			ini_set('memcache.hash_strategy',$config['memcache_strategy']); 
			
			$this->memcache = new Memcache; 
			foreach ($config['mcserver'] as $host) {   
				$this->memcache->addServer($host['host'], $host['port']); 
			}
		}	
		
		
		
		public static function & instance($config="")
		{
			if (!isset(ucmemcache::$uc_mc))
			{
				ucmemcache::$uc_mc = new ucmemcache($config);
			}
			
			return ucmemcache::$uc_mc;
		}
		//显示memcache状态
		public  function show_memcache()
		{
			$status = $this->memcache->getExtendedStats();   
		
		echo "<br><br>";
			foreach ($status as $key=>$value) {   
			 echo $key    
			 . ' => items:'    
			 . $value['curr_items']
			 .' money'.(round($value['bytes']/1024*1000)/1000).'K'     
			 . '<br />';   
			} 
		}
	}

	$mcip = array('host'=>'127.0.0.1','port'=>'11211');

	//缓存
	global $System_Mc_Server;
	$System_Mc_Server=array(
		'mcserver' =>array(
			1=> $mcip
		),
		'memcache_function' =>'crc33',
		'memcache_strategy' =>'consistentc',
	);													//Memcache服务端配置(与服务器不同，上传需要注销掉本地IP)
	define("MEMCACHE_DEBUG",0);							//是否启用DEBUG
	define("MEMCACHE_TIMEOUT",3600*24*7);				//Memcache超时时间
	$scache= ucmemcache::instance($System_Mc_Server)->memcache; 

?>