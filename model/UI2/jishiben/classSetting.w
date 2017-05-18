<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:359px;left:355px;height:auto;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="typeData" idColumn="fType">
   <column label="类型" name="fType" type="String" xid="xid1"></column>
   <data xid="default8">[{&quot;fType&quot;:&quot;支出&quot;},{&quot;fType&quot;:&quot;收入&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="classData" queryAction="queryJishibenclass" saveAction="saveJishibenclass" url="/jishiben/jishiben_action" tableName="jishibenclass" idColumn="fID"><column label="ID" name="fID" type="String" xid="default4"></column>
  <column label="类型" name="fType" type="String" xid="default5"></column>
  <column label="分类" name="fClass" type="String" xid="default6"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="分类设置">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="backBtn" icon="linear linear-volumehigh" onClick='{"operation":"window.close"}'>
   <i xid="i5" class="linear linear-volumehigh"></i>
   <span xid="span6"></span></a></div>
   <div class="x-titlebar-title" xid="title1">分类设置</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="saveBtn" icon="linear linear-bubble" onClick="saveBtnClick">
   <i xid="i3" class="linear linear-bubble"></i>
   <span xid="span4"></span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="addBtn" icon="linear linear-bus" onClick="addBtnClick">
   <i xid="i4" class="linear linear-bus"></i>
   <span xid="span5"></span></a></div></div></div>
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C749CB495AC000013F5C78301D4FCBC0"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="classData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..." class="form-control" xid="select1" bind-ref='ref("fType")' bind-options="$model.typeData" bind-optionsValue="fType"></select></div>
   <div class="x-col" xid="col2"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1" bind-ref='ref("fClass")'></input></div>
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="delBtn" icon="linear linear-fileadd" onClick="delBtnClick">
   <i xid="i2" class="linear linear-fileadd"></i>
   <span xid="span3"></span></a></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>