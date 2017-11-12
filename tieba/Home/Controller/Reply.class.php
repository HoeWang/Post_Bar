<?php

class Reply extends Common
{

    /**
     * 评论删除功能
     */
    public function del(){

        if(empty($_GET['id']))header('location:index.php');
        // echo '<pre>';
        // print_r($_GET);
        $reply = new Model('reply');
        if($reply->delete($_GET['id'])){
        header('location:'.$_SERVER['HTTP_REFERER']);
        }else{
            $this->alert('删除出错了');
        }
    }

    /**
     * 添加回复
     */
    public function doAdd(){
        
        if(empty($_SESSION['homeinfo'])){
            $this->alert('请先登录才能进行');
        }
        $_POST['uid'] = $_SESSION['homeinfo']['id'];
        $_POST['addtime'] = time(); 
        // echo'<pre>';
        
        // print_r($_POST);

        $reply = new Model('reply');
        if($reply->add($_POST)){
            $this->alert('评论成功！');
        }else{
            $this->alert('评论失败');
        }
    }





}