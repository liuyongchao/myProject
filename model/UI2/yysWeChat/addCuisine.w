<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:264px;left:68px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="picDetailData" idColumn="fID"><column isCalculate="false" label="" name="fID" type="Integer" xid="xid1"></column>
  <column label="" name="ptype" type="String" xid="xid2"></column>
  <column label="" name="wxname" type="String" xid="xid3"></column>
  <column label="" name="wxpic" type="String" xid="xid4"></column>
  <column label="" name="porder" type="Integer" xid="xid5"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;&quot;}]</data>
  <column label="" name="autotime" type="Date" xid="xid6"></column>
  <column name="pnote" type="String" xid="xid9"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="typeData" idColumn="value"><column label="值" name="value" type="String" xid="xid7"></column>
  <column label="显示值" name="oValue" type="String" xid="xid8"></column>
  <data xid="default2">[{&quot;value&quot;:&quot;0&quot;,&quot;oValue&quot;:&quot;民生群&quot;},{&quot;value&quot;:&quot;1&quot;,&quot;oValue&quot;:&quot;公益群&quot;},{&quot;value&quot;:&quot;2&quot;,&quot;oValue&quot;:&quot;社区群&quot;}]</data></div></div> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver" onReceive="windowReceiverReceive"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content1">
  
  
  <div class="panel panel-default" component="$UI/system/components/bootstrap/panel/panel" xid="panel1">
   
   <div class="panel-body" xid="body1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1"><![CDATA[公众号]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='picDetailData.ref("wxname")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4"><![CDATA[类型]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-ref='picDetailData.ref("ptype")' bind-options="typeData" bind-optionsValue="value" bind-optionsLabel="oValue"></select></div><div xid="div12" align="center"><span xid="span3"><![CDATA[微信矩阵]]></span>
  </div>
  <div component="$UI/system/components/justep/attachment/attachmentSimple" actionUrl="/baas/yysWeChat/attachment/SimpleFileStore" xid="attachmentSimple1" bind-ref='$model.picDetailData.ref("wxpic")'>
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
     <div style="clear:both;" xid="div11"></div></div> </div> </div>
  </div>
   </div></div>
   <div class="x-panel-bottom" xid="bottom1"><a component="$UI/system/components/justep/button/button" class="btn btn-link x-dialog-button" label="取消" xid="cancel" onClick="cancelClick">
   <i xid="i1"></i>
   <span xid="span1">取消</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-primary x-dialog-button" label="确定" xid="okbtn" onClick="okbtnClick">
   <i xid="i2"></i>
   <span xid="span2">确定</span></a></div></div></div>