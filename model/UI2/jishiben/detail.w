<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:346px;left:303px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="accontData" queryAction="queryJishiben" saveAction="saveJishiben" url="/jishiben/jishiben_action" tableName="jishiben" idColumn="fID" onValueChanged="accontDataValueChanged">
   <column label="ID" name="fID" type="String" xid="default1"></column>
   <column label="创建时间" name="fCreateTime" type="DateTime" xid="default2"></column>
   <column label="日期" name="fDate" type="Date" xid="default3"></column>
   <column label="金额" name="fMoney" type="Decimal" xid="default4"></column>
   <column label="备注" name="fDescription" type="String" xid="default5"></column>
   <column label="类型" name="fType" type="String" xid="default6"></column>
   <column label="分类" name="fClass" type="String" xid="default7"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="typeData" idColumn="fType"><column label="类型" name="fType" type="String" xid="xid1"></column>
  <data xid="default8">[{&quot;fType&quot;:&quot;支出&quot;},{&quot;fType&quot;:&quot;收入&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="classData" queryAction="queryJishibenclass" saveAction="saveJishibenclass" url="/jishiben/jishiben_action" tableName="jishibenclass" idColumn="fID">
   <column label="ID" name="fID" type="String" xid="default11"></column>
   <column label="类型" name="fType" type="String" xid="default9"></column>
   <column label="分类" name="fClass" type="String" xid="default10"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="记一笔">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="linear linear-volumehigh" onClick='{"operation":"window.close"}'>
   <i xid="i1" class="linear linear-volumehigh"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1">记一笔</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="saveBtn" icon="linear linear-bubble" label="button" onClick="saveBtnClick">
   <i xid="i2" class="linear linear-bubble"></i>
   <span xid="span2">button</span></a></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1">
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" bind-text='$model.accontData.label("fType")'></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-ref='$model.accontData.ref("fType")' bind-options="typeData" bind-optionsValue="fType"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="label6" bind-text='$model.accontData.label("fClass")'></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2" bind-ref='$model.accontData.ref("fClass")' bind-optionsValue="fClass" bind-options='classData.find(["fType"],[accontData.val("fType")])'></select></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3" bind-text='$model.accontData.label("fDate")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.accontData.ref("fDate")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4" bind-text='$model.accontData.label("fMoney")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.accontData.ref("fMoney")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5" bind-text='$model.accontData.label("fDescription")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" bind-ref='$model.accontData.ref("fDescription")'></input></div>
  </div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>