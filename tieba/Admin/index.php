<?php
session_start();
error_reporting(0);
if(isset($_SESSION['username']['role'])&&$_SESSION['username']['role']=='0')header('location:index.php?c=Login&a=logout');
//手动配置文件
include './Conf/config.php';
//自动加载
function __autoload($name)
{
    if(!file_exists("./Controller/{$name}.class.php")) header('location:index.php?c=Login&a=logout');
    include "./Controller/{$name}.class.php";
}

//c传过来的值决定类，a传过来的值决定方法
$c=isset($_GET['c']) ? $_GET['c'] : "Tags";
$a=isset($_GET['a']) ? $_GET['a'] : "index";
//最高上帝权限设置，common类结合使用构造函数
$_SESSION['c'] = $c;

if(!preg_match('/^[0-9a-zA-Z]+$/i',$c)) header('location:index.php?c=Login&a=logout');

if(!preg_match('/^[0-9a-zA-Z]+$/i',$a)) header('location:index.php?c=Login&a=logout');
$obj = new $c();
if(method_exists($obj,$a)){
    $obj->$a();
}else{
    header('location:index.php?c=Login&a=logout');
}



// var_dump($_GET['c']);
//var_dump($_COOKIE);
//用户表
// create table tieba_user(
//     id int unsigned primary key auto_increment,
//     name varchar(100) not null unique,
//     pass varchar(255) not null,
//     sex tinyint,0为女，1位男
//     phone int,
//     num int not null default 0,
//     jifen int not null default 0
//     email varchar(100),
//     role tinyint not null default 0,   0为普通，1位小吧主，2为上帝
//     status tinyint not null default 1,   1为正常 ，2为禁用
//     addtime varchar(100)
//     )engine=innodb default charset=utf8;
//     
//     帖子表
//     create table tieba_tags(
//     id int unsigned primary key auto_increment,
//     uid int not null,
//     title varchar(100) not null,
//     content text not null,
//     pic varchar(100),
//     clicknum int not null default 0,
//     addtime varchar(100),
//     deltime varchar(100),
//     showstatus tinyint not null default 1     //1正常，2违法，3.已删除
//     )engine=innodb default charset=utf8;
//     
//     回复表
    // create table tieba_reply(
    // id int unsigned primary key auto_increment,
    // tid int not null,
    // uid int not null,
    // replyid int not null default -1,     -1就代表是属于帖子的自身回复，不是-1就则是对应reply中id的回复，查找看对应id的回复下有没有能查到匹配的replyid，有的话遍历到它的下面
    // content varchar(100) not null,
    // addtime varchar(100),
    // status tinyint not null default 1
    // )engine=innodb default charset=utf8;

