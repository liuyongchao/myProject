<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:187px;left:211px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="accontData" queryAction="queryJishiben" saveAction="saveJishiben" url="/jishiben/jishiben_action" tableName="jishiben" idColumn="fID"><column label="ID" name="fID" type="String" xid="default1"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default2"></column>
  <column label="日期" name="fDate" type="Date" xid="default3"></column>
  <column label="金额" name="fMoney" type="Decimal" xid="default4"></column>
  <column label="备注" name="fDescription" type="String" xid="default5"></column>
  <column label="类型" name="fType" type="String" xid="default6"></column>
  <column label="分类" name="fClass" type="String" xid="default7"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="记账本">
   
   <div class="x-titlebar-left" xid="left1"></div><div class="x-titlebar-title" xid="title1">记账本</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="accontData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" bind-click="col1Click"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col8"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='$model.accontData.ref("fClass")' bind-css='{"list-in":  val("fType")=="收入","list-out": val("fType")=="支出"}'></div></div>
   <div class="x-col" xid="col10"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" bind-ref='$model.accontData.ref("fMoney")'></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col11"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-ref='$model.accontData.ref("fDescription")'></div></div>
   <div class="x-col" xid="col13"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref='$model.accontData.ref("fDate")'></div></div></div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="D" icon="linear linear-fileadd" onClick='{"operation":"accontData.delete"}'>
   <i xid="i2" class="linear linear-fileadd"></i>
   <span xid="span2"></span></a></div></div>
  </li></ul> </div>
  </div>
   <div class="x-panel-bottom" xid="bottom1"></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/jishiben/detail.w"></span></div>