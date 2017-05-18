<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:279px;left:130px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="accontData" queryAction="queryJishiben" saveAction="saveJishiben" url="/jishiben/jishiben_action" tableName="jishiben" idColumn="fID" orderBy="fDate:desc"><column label="ID" name="fID" type="String" xid="default1"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default2"></column>
  <column label="日期" name="fDate" type="Date" xid="default3"></column>
  <column label="金额" name="fMoney" type="Decimal" xid="default4"></column>
  <column label="备注" name="fDescription" type="String" xid="default5"></column>
  <column label="类型" name="fType" type="String" xid="default6"></column>
  <column label="分类" name="fClass" type="String" xid="default7"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="记账本">
   
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="backBtn" icon="linear linear-sad" onClick="backBtnClick">
   <i xid="i4" class="linear linear-sad"></i>
   <span xid="span5"></span></a></div><div class="x-titlebar-title" xid="title1">记账本</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="addBtn" xid="button1" icon="linear linear-bus" onClick="button1Click">
   <i xid="i1" class="linear linear-bus"></i>
   <span xid="span1">addBtn</span></a></div></div></div>
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C749C6B27AC000012F1E1E7B9F901CB8">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span3">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="accontData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" bind-click="editClick"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col8"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("fClass")' bind-css='{"list-in":  val("fType")=="收入","list-out": val("fType")=="支出"}'></div></div>
   <div class="x-col" xid="col10"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" bind-ref='ref("fMoney")' bind-css='{"list-in":  val("fType")=="收入","list-out": val("fType")=="支出"}'></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col11"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-ref='ref("fDescription")'></div></div>
   <div class="x-col" xid="col13"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref='ref("fDate")'></div></div></div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="delBtn" icon="linear linear-fileadd" onClick="delBtnClick">
   <i xid="i2" class="linear linear-fileadd"></i>
   <span xid="span2"></span></a></div></div>
  </li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span4">加载更多...</span></div> </div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/jishiben/detail.w" onReceived="windowDialog1Received" style="top:14px;left:86px;"><result concept="accontData" operation="edit" origin="accontData" xid="default8">
   <mapping from="fID" to="fID" locator="true" xid="default9"></mapping>
   <mapping from="fCreateTime" to="fCreateTime" xid="default10"></mapping>
   <mapping from="fDate" to="fDate" xid="default11"></mapping>
   <mapping from="fMoney" to="fMoney" xid="default12"></mapping>
   <mapping from="fDescription" to="fDescription" xid="default13"></mapping>
   <mapping from="fType" to="fType" xid="default14"></mapping>
   <mapping from="fClass" to="fClass" xid="default15"></mapping></result></span></div>