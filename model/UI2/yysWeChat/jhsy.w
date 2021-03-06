<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:336px;left:552px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh">
   <column label="id" name="id" type="String" xid="xid1"></column>
   <column label="图片" name="fImgUrl" type="String" xid="xid2"></column>
   <column label="链接地址" name="fUrl" type="String" xid="xid9"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="newsData" queryAction="queryDt_data1" url="/yysWeChat/yysWechat" tableName="dt_data1" idColumn="id">
   <column label="id" name="id" type="Integer" xid="default1"></column>
   <column label="type" name="type" type="String" xid="default2"></column>
   <column label="zhuti" name="zhuti" type="String" xid="default3"></column>
   <column label="fdate1" name="fdate1" type="String" xid="default4"></column>
   <column label="pnote" name="pnote" type="String" xid="default5"></column>
   <column label="autotime" name="autotime" type="DateTime" xid="default6"></column>
  <filter name="filter0" xid="filter1"><![CDATA[dt_data1.type = '计划生育']]></filter>
  </div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar" xid="panel2">
   <div class="x-panel-top" xid="top1" style="background-color:red;">
    <p xid="p1" style="display:inline;color:#fff;position:absolute;bottom:0px;left:5px;"><![CDATA[计划生育]]></p>
    <p xid="p2" style="display:inline;color:#fff;position:absolute;bottom:0px;right:5px;">市民热线：96345</p></div> 
   <div class="x-panel-content  x-scroll-view" xid="content3" style="bottom: 0px;" _xid="C75C951D1F300001E33B188E1430177E">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView" autoAppend="true" pullUpMoveLabel="　" pullUpLabel="　" pullUpLoadingLabel="　" noMoreLoadLabel="　" pullDownLoadingLabel="　" pullDownMoveLabel="　" pullDownLabel="　">
     <div class="x-content-center x-pull-down container" xid="div16">
      <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i9"></i>
      <span class="x-pull-down-label" xid="span17">　</span></div> 
     <div class="x-scroll-content" xid="div17">
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card" xid="panel1">
       <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel" xid="carousel1" auto="true" style="height:133px;">
        <ol class="carousel-indicators" xid="ol1"></ol>
        <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents" active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg" routable="false">
         <div class="x-contents-content" xid="content2">
          <img src="./main/img/top1.png" alt="" xid="image13" bind-click="openPageClick" class="tb-img1" pagename="./detail.w"></img></div> </div> </div> </div> 
      <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="newsData">
       <ul class="x-list-template" xid="listTemplateUl2">
        <li xid="li2">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
          <div class="x-col x-col-fixed x-col-center" xid="col11" style="width:auto;">
           <i xid="i1" class="dataControl dataControl-arrowrightl" style="color:blue"></i></div> 
          <div class="x-col" xid="col4">
           <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("zhuti")'></div></div> </div> </li> </ul> </div> </div> 
     <div class="x-content-center x-pull-up" xid="div18">
      <span class="x-pull-up-label" xid="span18">　</span></div> 
  <div component="$UI/system/components/justep/widgets/widgets" class="x-widgets row" xid="widgets1">
   <div class="x-column col-lg-4" xid="column1"><div component="$UI/system/components/bootstrap/accordion/accordion" class="panel-group" xid="accordion1">
   <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel3">
    <div class="panel-heading" xid="heading1">
     <h4 class="panel-title" xid="h41">
      <a xid="a1">Title</a></h4> </div> 
    <div class="panel-collapse collapse in" xid="div1">
     <div class="panel-body" xid="div2"></div></div> </div> </div></div>
   <div class="x-column col-lg-4" xid="column2"></div>
   <div class="x-column col-lg-4" xid="column3"></div></div></div> </div> </div></div>