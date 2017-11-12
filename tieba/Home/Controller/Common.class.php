<?php

/**
 * 公共控制器
 */
class Common
{
    function __construct()
    {
        // if(empty($_SESSION['homeinfo'])){
        //     header('location:index.php?c=Tagsn&a=index');
        //     exit;
            
        // }
        // if($_SESSION['username']['id']!=5 &&$_SESSION['c']=='User'){
        //     header('location:index.php?c=Login&a=logout');
        //     exit;
        // }
    }
    /**
     * 辅助方法，用于出错跳转
     * @param  string $str 提示信息
     */
    protected function jump($str,$url = '')
    {
        if(empty($url)) $url = $_SERVER['HTTP_REFERER'];

        echo $str.'<a href="'.$url.'">跳转中...</a>';
        echo '<meta http-equiv="refresh" content="2;url='.$url.'">';
        exit;
    }

    /**
     * 弹窗提示
     * @param strting $str 提示信息
     * @param string $url  跳转地址
     */
    protected function alert($str,$url = '')
    {
        if(empty($url)) $url = $_SERVER['HTTP_REFERER'];
        echo "<script>alert('$str');location.href='$url'</script>";
        exit;
    }
}
