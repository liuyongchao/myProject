<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:273px;left:168px;"> 
    </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"> 
    <div class="x-panel-content tb-trans"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2" swipe="false" wrap="false" slidable="false"> 
        
  <div class="x-contents-content" xid="conmmonContent"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="$UI/yysWeChat/fsgk.w"></div></div></div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1" height="55"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="aboutUSBtn">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left" label="凤山简介" xid="aboutUSBtn" style="border-right-style:solid;border-right-width:1px;border-right-color:#C0C0C0;" icon="linear linear-rocket" onClick="aboutUSBtnClick">
    <i xid="i2" class="linear linear-rocket"></i>
    <span xid="span1">凤山简介</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-left" label="服务凤山" xid="doingBtn" style="border-right-style:solid;border-right-width:1px;border-right-color:#C0C0C0;" icon="linear linear-rocket" onClick="doingBtnClick">
    <i xid="i2" class="linear linear-rocket"></i>
    <span xid="span2">服务凤山</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="互动一家亲" xid="searchBtn" onClick="searchBtnClick">
    <i xid="i3"></i>
    <span xid="span3">互动一家亲</span></a> </div></div> 
  </div> 
<div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" direction="left-top" xid="popMenu1" anchor="aboutUSBtn" opacity="0">
   <div class="x-popMenu-overlay" xid="div2"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu2" style="background-color:#F8F6F7;">
    <li class="x-menu-item" xid="item2" bind-click="item2Click">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="凤山概况" xid="button2">
      <i xid="i1"></i>
      <span xid="span5">凤山概况</span></a> </li> 
  <li class="x-menu-item" xid="item7" bind-click="item7Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="政务微博" xid="button7">
    <i xid="i9"></i>
    <span xid="span10">政务微博</span></a> </li>
  <li class="x-menu-item" xid="item8">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="历史消息" xid="button8">
    <i xid="i10"></i>
    <span xid="span11">历史消息</span></a> </li>
  <li class="x-menu-item" xid="item9" bind-click="item9Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="最新消息" xid="button9">
    <i xid="i11"></i>
    <span xid="span12">最新消息</span></a> </li></ul> </div><div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" direction="left-top" xid="popMenu2" anchor="doingBtn" opacity="0">
   <div class="x-popMenu-overlay" xid="div1"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu1" style="background-color:#F8F6F7;"><li class="x-menu-item" xid="item1" bind-click="item1Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="凤山公益" xid="button1">
    <i xid="i4"></i>
    <span xid="span4">凤山公益</span></a> </li>
  <li class="x-menu-item" xid="item10">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="微信矩阵" xid="button10">
    <i xid="i12"></i>
    <span xid="span13">微信矩阵</span></a> </li>
  <li class="x-menu-item" xid="item11" bind-click="item11Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="法制宣传" xid="button11">
    <i xid="i13"></i>
    <span xid="span14">法制宣传</span></a> </li>
  <li class="x-menu-item" xid="item12" bind-click="item12Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="便民服务" xid="button12">
    <i xid="i14"></i>
    <span xid="span15">便民服务</span></a> </li>
  <li class="x-menu-item" xid="item13" bind-click="item13Click">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="计划生育" xid="button13">
    <i xid="i15"></i>
    <span xid="span16">计划生育</span></a> </li></ul></div>
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu" direction="left-top" xid="popMenu3" anchor="searchBtn" opacity="0">
   <div class="x-popMenu-overlay" xid="div3"></div>
   <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content" xid="menu3" style="background-color:#F8F6F7;">
    <li class="x-menu-item" xid="item3">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="投票活动" xid="button3">
      <i xid="i5"></i>
      <span xid="span6">投票活动</span></a> </li> 
  <li class="x-menu-item" xid="item4">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="月度大转盘" xid="button4">
    <i xid="i6"></i>
    <span xid="span7">月度大转盘</span></a> </li>
  <li class="x-menu-item" xid="item5">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="集赞有礼" xid="button5">
    <i xid="i7"></i>
    <span xid="span8">集赞有礼</span></a> </li>
  <li class="x-menu-item" xid="item6">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="其他活动" xid="button6">
    <i xid="i8"></i>
    <span xid="span9">其他活动</span></a> </li></ul> </div></div>
