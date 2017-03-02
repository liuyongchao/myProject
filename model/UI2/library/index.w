<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="120" style="background-color:#39A5AF;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col5" style="background-color:#fff;height:60px;"></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col11">
   <input component="$UI/system/components/justep/input/input" class="form-control" xid="input2" placeHolder="请输入检索字词"></input></div>
  <div class="x-col x-col-fixed" xid="col10" style="width:auto;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="button" xid="button1" icon="glyphicon glyphicon-search" style="color:#000;font-size:14px;background-color:#fff;">
    <i xid="i1" class="glyphicon glyphicon-search"></i>
    <span xid="span1"></span></a> </div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="margin-bottom:10px">
   <div class="x-col" xid="col6">
    <img src="$UI/library/img/01.png" alt="" xid="image1" style="width:100%;"></img></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7" style="position:relative;margin:10px 5px;background-color:#FFD675;" bind-click="col7Click">
    <i xid="i7" class="linear linear-magnifier" style="color:#fff;font-size:3em;"></i>
    <span xid="span7" style="font-size:24px;color:#fff;position:absolute;top:25%;">馆藏查询</span></div> 
   <div class="x-col" xid="col17" style="position:relative;margin:10px 5px;background-color:#399179;" bind-click="col17Click">
    <i xid="i8" class="linear linear-tag" style="color:#fff;font-size:3em;"></i>
    <span xid="span8" style="font-size:24px;color:#fff;position:absolute;top:25%;">新书通报</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col18" style="position:relative;margin:10px 5px;background-color:#A27F99;">
    <i xid="i9" class="linear linear-volumelow" style="color:#fff;font-size:3em;"></i>
    <span xid="span9" style="font-size:24px;color:#fff;position:absolute;top:25%;">最新消息</span></div> 
   <div class="x-col" xid="col19" style="position:relative;margin:10px 5px;background-color:#7BA592;">
    <i xid="i10" class="linear linear-sun" style="color:#fff;font-size:3em;"></i>
    <span xid="span10" style="font-size:24px;color:#fff;position:absolute;top:25%;">资源探索</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col20" style="position:relative;margin:10px 5px;background-color:#3A3329;">
    <i xid="i11" class="linear linear-thumbsup" style="color:#fff;font-size:3em;"></i>
    <span xid="span11" style="font-size:24px;color:#fff;position:absolute;top:25%;">借阅服务</span></div> 
   <div class="x-col" xid="col21" style="position:relative;margin:10px 5px;background-color:#978B7C;" bind-click="col21Click">
    <i xid="i12" class="linear linear-wheelchair" style="color:#fff;font-size:3em;"></i>
    <span xid="span12" style="font-size:24px;color:#fff;position:absolute;top:25%;">借阅记录</span></div> </div></div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/library/main.w" forceRefreshOnOpen="false" routable="true"></span>
  </div>