<?php
/**
 * 登陆控制器
 */
class Login extends Common
{
    /**
     * 显示登陆界面
     */
    function index()
    {
        include'./View/Login/index.html';
    }

    /**
     * 处理登录
     */
    public function doLogin()
    {
        //判断用户名和密码是不是为空
        
        $user = new Model('user');
        $info = $user->where("username='{$_POST['username']}'")->limit(1)->select();
        

        
        if(empty($info)){
            echo '<script>alert("用户名或密码错误");location.href="'.$_SERVER['HTTP_REFERER'].'"</script>';
            exit;
        }else {
            $info = $info[0];
            if($info['pwd'] != md5($_POST['pwd'])){
               echo '<script>alert("用户名或密码错误");location.href="'.$_SERVER['HTTP_REFERER'].'"</script>';
               
                exit; 
            }
            
        
            //判断状态
            if($info['status']=='2'){
                echo '<script>alert("被禁用的用户，无法登陆！");location.href="'.$_SERVER['HTTP_REFERER'].'"</script>';
            exit;
            }
            $info['jifen'] += 10;
            $user->save($info);
            //判断通过
            if($_SESSION['homeinfo']=$info) 
                header('location:index.php');
        }
    }


    
    public function logout()
    {
        unset($_SESSION['homeinfo']);
        // if(isset($_COOKIE[session_name()]))
        // setCookie(session_name(),'',-1,'/');
        
        header('location:index.php?c=Tags&a=index');
    }

    /**
     * 签到
     */
    public function qiandao()
    {
        $sign = new Model('sign');
        $user = new Model('user');
        $infos = $user->where("username='{$_SESSION['homeinfo']['username']}'")->limit(1)->select();
        $infos = $infos[0];

        $arr = $sign->where("sname='{$_SESSION['homeinfo']['username']}'")->limit(1)->select()[0];
        // echo '<pre>';
        // print_r($arr);
        if(!$arr){
            $info =[
                'sname' => "{$_SESSION['homeinfo']['username']}",
                'signnum' => 1,
                'signtime' => time(),
            ];
            if($sign->add($info)){
                $infos['jifen'] += 10;
                $infos['num'] +=1;
                $user->save($infos);
                $this->alert('签到成功');
                
            }else{
                $this->alert('签到失败');
            }
        }else{
            
            if(date("Y-m-d",$arr['signtime'])==date("Y-m-d",time())){
                $this->alert('今天已签到');
            }else{
                $arr['signtime'] = time();
                $arr['signnum'] += 1;
                if($sign->save($arr)){
                    $infos['jifen'] += 10;
                    $infos['num'] +=1;
                    $user->save($infos);
                    $this->alert('签到成功');
                }else{
                    $this->alert('签到失败');
                }
            }
        }
    }
}