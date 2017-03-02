<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:174px;left:293px;"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" xid="contents1">
   <div class="x-contents-content" xid="homeContent"></div>
  <div class="x-contents-content" xid="serachContent">
   <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer3" src="$UI/library/searchBook.w"></div></div><div class="x-contents-content" xid="myContent">
   <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer2" autoLoad="true" src="$UI/library/myBook.w"></div></div><div class="x-contents-content" xid="newContent">
   <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="$UI/library/newBook.w"></div></div><div class="x-contents-content" xid="otherContent"></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1" selected="homeBtn"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="主页" xid="homeBtn" icon="glyphicon glyphicon-home" target="homeContent">
   <i xid="i1" class="glyphicon glyphicon-home"></i>
   <span xid="span1">主页</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="馆藏查询" xid="serachBtn" icon="glyphicon glyphicon-search" target="serachContent">
   <i xid="i2" class="glyphicon glyphicon-search"></i>
   <span xid="span2">馆藏查询</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="我的书房" xid="myBtn" icon="glyphicon glyphicon-user" target="myContent">
   <i xid="i3" class="glyphicon glyphicon-user"></i>
   <span xid="span3">我的书房</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="新到管藏" xid="newBtn" icon="glyphicon glyphicon-book" target="newContent">
   <i xid="i4" class="glyphicon glyphicon-book"></i>
   <span xid="span4">新到管藏</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="其它" xid="otherBtn" icon="glyphicon glyphicon-comment" target="otherContent">
   <i xid="i5" class="glyphicon glyphicon-comment"></i>
   <span xid="span5">其它</span></a></div></div></div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>