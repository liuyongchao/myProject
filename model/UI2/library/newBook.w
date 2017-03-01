<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:220px;left:305px;height:auto;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="testData" idColumn="fID"><column label="ID" name="fID" type="String" xid="xid1"></column>
  <column label="日期" name="fDate" type="String" xid="xid2"></column>
  <data xid="default2">[{&quot;fID&quot;:&quot;1&quot;,&quot;fDate&quot;:&quot;2017-02-01&quot;},{&quot;fID&quot;:&quot;2&quot;,&quot;fDate&quot;:&quot;2017-02-02&quot;},{&quot;fID&quot;:&quot;3&quot;,&quot;fDate&quot;:&quot;2017-02-03&quot;},{&quot;fID&quot;:&quot;4&quot;,&quot;fDate&quot;:&quot;2017-02-04&quot;},{&quot;fID&quot;:&quot;5&quot;,&quot;fDate&quot;:&quot;2017-02-05&quot;},{&quot;fID&quot;:&quot;6&quot;,&quot;fDate&quot;:&quot;2017-02-06&quot;},{&quot;fID&quot;:&quot;7&quot;,&quot;fDate&quot;:&quot;2017-02-07&quot;},{&quot;fID&quot;:&quot;8&quot;,&quot;fDate&quot;:&quot;2017-02-08&quot;},{&quot;fID&quot;:&quot;9&quot;,&quot;fDate&quot;:&quot;2017-02-09&quot;},{&quot;fID&quot;:&quot;10&quot;,&quot;fDate&quot;:&quot;2017-02-10&quot;}]</data>
  <rule xid="rule1">
   <col name="fDate" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">val(&quot;fDate&quot;)</expr></calculate> </col> </rule>
  <master xid="default3"></master></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="新到藏管"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">新到藏管</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="testData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" bind-click="li2Click" style="font-size:28px;font-weight:bold;">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
      <div class="x-col x-col-fixed x-col-center" xid="col11" style="width:auto;">
       <i xid="i1" class="dataControl dataControl-arrowrightl" style="color:blue"></i></div> 
      <div class="x-col" xid="col4">
       <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("fDate")' format="yyyy-MM-dd" bind-text='val("fDate")+"　新到藏管"'></div></div> </div> </li> </ul> </div></div>
  </div> 
</div>