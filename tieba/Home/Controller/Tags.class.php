<?php
class Tags extends Common
{
    /**
     * 展示帖子列表
     * @return [type] [description]
     */
	public function index()
	{
		
		$tags = new Model('tags');

        

        //str语句的构造
		$str = '1=1';

		//对没有get到name和tid的时候进行填坑
        $title = isset($_GET['title']) ? $_GET['title'] : '';
        if($title !== '')
            $str .=" and title like '%{$_GET['title']}%'"; 

        
        //状态处理
        $status = isset($_GET['status'])?$_GET['status'] : 2;
        if($status !== ''){
            $str .=" and showstatus <= {$status}";
        }
		// $name = isset($_GET['name'])?$_GET['name']:'';
		// $tid = isset($_GET['tid'])?$_GET['tid']:'';
		// if($name!=='')
		// 	$str .=" and name like '%{$name}%'";
		// if($tid !=='')
		// 	$str .=" and tid={$tid}";
		// //page类有一个$total参数要传
        // 最高最低价格p1与p2的构造str
        // $p1 = isset($_GET['p1']) ? $_GET['p1'] : '';
        // $p2 = isset($_GET['p2']) ? $_GET['p2'] : '';
        // if($p1 > $p2){
        //     $b = $p1;
        //     $p1 = $p2;
        //     $p2 = $b;
        // }
        // if($p1 < 0 || $p2 < 0)$this->alert('请输入不小于0的价格');
        // if($p1 > $p2 )$this->jump('大小价格请勿混乱');
        // if($p1 !== '') {
        //     if($p2 !==''){
        //     $str .=" and price between {$p1} and";
        //     }else{
        //         $str .=" and price > {$p1} ";    
        //     }
        // }
        // if($p2 !== '') {
        //     if($p1!==''){
        //     $str .=" {$p2}";
        //     }else{
        //         $str .=" and price < {$p2} ";
        //     }
        // }

        //处理价格升序降序排列
        $order = 'addtime desc';
        if(!empty($_GET['sortClink'])){
            $order = $_GET['sortClick'];
            unset($_GET['sortClick']);
        }
        
        //a链接前台可以拼接进行传搜索条件之类的上一次get的参数。
       
        //var_dump($now);
        //var_dump($_GET['p1'],$_GET['p2']);
        //对分类显示使用array_column;
        
        //分页
		$total = $tags->where($str)->count();
		$page = new Page($total,40);	
		$arr = $tags->where($str)->order($order)->limit($page->limit)->select();
        //var_dump($types);
        $user = new Model('user');
        
		include './View/Tags/list.html';
        //var_dump($goods->_sql());
	}

    /**
     * 处理状态
     */
    public function doStatus()
    {
        if(empty($_GET['id']))header('location:index.php');
        
        $tags = new Model('tags');
        $tags->save($_GET);
    
        header("location:".$_SERVER['HTTP_REFERER']);
    }

    /**
     * 显示帖子内容以及评论
     */
    public function contents(){
        
        if(empty($_GET['id']))header('location:index.php');
        $tags = new Model('tags');

        
        $arr = $tags->find($_GET['id']);
        $num['clicknum'] = $arr['clicknum']+1;
        $tags->where("id={$_GET['id']}")->save($num);
        $reply = new Model('reply');
        $info = $reply->where("tid={$_GET['id']}")->select();

        $user = new Model('user');
        $user1 = $user->find($arr['uid']);
        
        

        // echo '<pre>';
        // print_r($arr);
        // print_r($info);
        include './View/Tags/detail.html';
    }


    /**
     * 发帖子界面
     */
    public function add(){
        include './View/Tags/add.html';
    }

    /**
     * 处理添加帖子
     */
    public function doAdd(){
        // echo'<pre>';
        // print_r($_FILES);
        // print_r($_POST);

        // exit;
        if($_FILES['pic']['error']!==4){
        $dir = ['path'=>'../Upload/'];
        $up = new Upload($dir);
        
        if(!$pic = $up->up()){
            $this->jump($up->errInfo);
        }
        $_POST['pic'] = $pic;
    }
        $_POST['uid'] = $_SESSION['homeinfo']['id'];
        $_POST['addtime'] = time();
        // $content = isset($_POST['content'])?$_POST['content']:"";
        if(empty($_POST['content'])){
            $this->alert('内容不能为空');
            exit;
        }
        $user = new Model('user');
        $info = $user->where("id={$_SESSION['homeinfo']['id']}")->limit(1)->select();
        $info = $info[0];
        $info['jifen'] += 10;
        // echo '<pre>';
        // print_r($info);
        // exit;
            $user->save($info);
        $tags = new Model('tags');
        if($tags->add($_POST)){
            $this->alert('发布成功','index.php');
        }
        
        
    }











}