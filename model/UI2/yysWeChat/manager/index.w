<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:314px;left:508px;height:auto;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="picData" queryAction="queryDt_wxpic" saveAction="saveDt_wxpic" url="/yysWeChat/yysWechat" tableName="dt_wxpic" idColumn="id"><column label="id" name="id" type="Integer" xid="default1"></column>
  <column label="ptype" name="ptype" type="String" xid="default2"></column>
  <column label="wxname" name="wxname" type="String" xid="default3"></column>
  <column label="wxpic" name="wxpic" type="String" xid="default4"></column>
  <column label="porder" name="porder" type="Integer" xid="default5"></column>
  <column label="autotime" name="autotime" type="DateTime" xid="default6"></column>
  <column label="pnote" name="pnote" type="String" xid="default7"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="typeData" queryAction="queryDt_wxtype" saveAction="saveDt_wxtype" url="/yysWeChat/yysWechat" tableName="dt_wxtype" idColumn="id"><column label="id" name="id" type="Integer" xid="default8"></column>
  <column label="wxtype" name="wxtype" type="String" xid="default9"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="后端管理页面">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">后端管理页面</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/tabs/tabs" class="x-tabs" xid="tabs1">
   <div component="$UI/system/components/justep/panel/panel" class="x-panel" xid="panel2">
    <div class="x-panel-top" xid="top2">
     <ul class="nav nav-tabs" xid="navs1">
      <li class="active" xid="li1">
       <a content="tabContent_1" xid="tabItem1"><![CDATA[页面编辑]]></a></li> 
  <li xid="li2">
   <a content="tabContent1" xid="tabItem2"><![CDATA[微信矩阵]]></a></li></ul> </div> 
    <div class="x-panel-content" xid="content2">
     <div component="$UI/system/components/justep/contents/contents" class="x-contents" active="0" xid="contents1">
      <div class="x-contents-content active" xid="content1"><iframe src="http://localhost:8080/ueditor/" xid="iframe1" frameborder="false" width="100%" height="95%"></iframe></div>
  <div class="x-contents-content" xid="content3"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="width:200px;">
   <label class="x-label" xid="label1" style="text-align:center;"><![CDATA[类型]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-options="typeData" bind-ref='$model.picData.ref("ptype")' bind-optionsValue="wxtype"></select></div>
  <div component="$UI/system/components/justep/attachment/attachmentSimple" xid="attachmentSimple1" bind-ref='picData.ref("wxpic")' accept="image/*">
   <div class="x-attachment" xid="div1">
    <div class="x-attachment-content x-card-border" xid="div2">
     <div class="x-doc-process" xid="div3">
      <div class="progress-bar x-doc-process-bar" role="progressbar" style="width:0%;" xid="progressBar1"></div></div> 
     <div data-bind="foreach:$attachmentItems" xid="div4">
      <div class="x-attachment-cell" xid="div5">
       <div class="x-attachment-item x-item-other" data-bind="click:$model.previewOrRemoveItem.bind($model),style:{backgroundImage:($model.previewPicture.bind($model,$object))()}" xid="div6">
        <a data-bind="visible:$model.$state.get() == 'remove'" class="x-remove-barget" xid="a1"></a></div> </div> </div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload'" xid="div7">
      <div class="x-attachment-item x-item-upload" data-bind="visible:$state.get() == 'upload'" xid="div8"></div></div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload' &amp;&amp; $attachmentItems.get().length &gt; 0" xid="div9">
      <div class="x-attachment-item x-item-remove" data-bind="click:changeState.bind($object,'remove')" xid="div10"></div></div> 
     <div style="clear:both;" xid="div11"></div></div> </div> </div></div></div> </div> </div> </div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>