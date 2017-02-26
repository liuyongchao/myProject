<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:280px;left:269px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="picData" saveAction="saveDt_wxpic" queryAction="queryDt_wxpic" tableName="dt_wxpic" url="/yysWeChat/yysWechat" idColumn="id" limit="10">
   <column label="id" name="id" type="Integer" xid="default1"></column>
  <column label="ptype" name="ptype" type="String" xid="default2"></column>
  <column label="wxname" name="wxname" type="String" xid="default3"></column>
  <column label="wxpic" name="wxpic" type="String" xid="default4"></column>
  <column label="porder" name="porder" type="Integer" xid="default5"></column>
  <column label="autotime" name="autotime" type="DateTime" xid="default6"></column>
  <column label="pnote" name="pnote" type="String" xid="default11"></column></div></div> 
<div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="toolBar1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="新增菜品" xid="addCuisine" icon="icon-android-add" onClick="addCuisineClick">
    <i xid="i11" class="icon-android-add"></i>
    <span xid="span12">新增管理</span></a> 
   <div class="input-group pull-right" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
    <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="selectCondition" placeHolder="请输入"></input>
    <div class="input-group-btn" xid="layoutWizard2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="button" xid="select" icon="icon-android-search" onClick="selectClick">
      <i xid="i6" class="icon-android-search"></i>
      <span xid="span25"></span></a> </div> </div> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="编辑菜品" xid="editCuisine" icon="icon-edit" onClick="editCuisineClick">
    <i xid="i2" class="icon-edit"></i>
    <span xid="span21">编辑管理</span></a> </div>
  <table component="$UI/system/components/justep/list/list" class="x-list  table" xid="cuisineList" data="picData" style="width:100%;" bind-dblclick="cuisineListDblclick">
   <thead xid="thead2">
    <tr xid="tr3">
     <th xid="default13">图片</th>
     <th xid="default13">类型</th>
     <th xid="default13">公众号</th>
     <th xid="default13">更新时间</th>
     </tr> </thead> 
   <tbody class="x-list-template x-min-height" xid="listTemplate2" componentname="$UI/system/components/justep/list/list#listTemplate">
    <tr xid="tr4">
     <td xid="td2">
      <img src="" alt="" xid="image2" height="40" style="width:40;height:40;" bind-attr-src="$model.transUrl($object)" class="img-circle"></img></td> 
     <td xid="td2">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output11" bind-ref='ref("ptype")'></div></td> 
     <td xid="td2">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output13" bind-ref='ref("wxname")'></div></td> 
     <td xid="td2">
      <div component="$UI/system/components/justep/output/output" class="x-output" xid="output12" bind-ref='ref("autotime")' format="yyyy-MM-dd"></div></td> 
     <td xid="td2">
      </td> </tr> </tbody> </table>
  <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid" xid="pagerBar1" data="picData">
   <div class="row" xid="div4">
    <div class="col-sm-3" xid="div5">
     <div class="x-pagerbar-length" xid="div6">
      <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect" class="x-pagerlimitselect" xid="pagerLimitSelect1" defaultValue="10">
       <span xid="span2">显示</span>
       <select component="$UI/system/components/justep/select/select" class="form-control input-sm" xid="select1">
        <option value="10" xid="default7">10</option>
        <option value="20" xid="default8">20</option>
        <option value="50" xid="default9">50</option>
        <option value="100" xid="default10">100</option></select> 
       <span xid="span3">条</span></label> </div> </div> 
    <div class="col-sm-3" xid="div7">
     <div class="x-pagerbar-info" xid="div8">当前显示0条，共0条</div></div> 
    <div class="col-sm-6" xid="div9">
     <div class="x-pagerbar-pagination" xid="div10">
      <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination" xid="pagination1">
       <li class="prev" xid="li8">
        <a href="#" xid="a3">
         <span aria-hidden="true" xid="span4">«</span>
         <span class="sr-only" xid="span5">Previous</span></a> </li> 
       <li class="next" xid="li9">
        <a href="#" xid="a4">
         <span aria-hidden="true" xid="span6">»</span>
         <span class="sr-only" xid="span7">Next</span></a> </li> </ul> </div> </div> </div> </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="cuisineWindowDialog" src="addCuisine.w" status="normal" width="45%" height="60%" showTitle="true" title="新增菜品" onReceived="cuisineWindowDialogReceived">
   <result concept="cuisineData" operation="edit" origin="cuisineDetailData" xid="default33">
    <mapping from="fID" to="fID" locator="true" xid="default34"></mapping>
    <mapping from="fName" to="fName" xid="default35"></mapping>
    <mapping from="fPrice" to="fPrice" xid="default36"></mapping>
    <mapping from="fDescription" to="fDescription" xid="default37"></mapping>
    <mapping from="fImage" to="fImage" xid="default38"></mapping>
    <mapping from="fStatus" to="fStatus" xid="default39"></mapping></result> </span></div>