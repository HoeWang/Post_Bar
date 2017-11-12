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







}