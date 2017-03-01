<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:199px;left:464px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="hjmv_fDdata" queryAction="queryHjmv_fddata" url="/NingboHaijinguangfuAPP/NingboHaijinguangfuAPP_action" tableName="hjmv_fddata" idColumn="id" orderBy="updatetime:desc">
   <rule xid="rule1">
   <col name="sumRMB" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default30">$row.val(&quot;fdl&quot;) * $row.val(&quot;dprice&quot;)</expr></calculate> </col> </rule>
  <column label="id" name="id" type="Integer" xid="default1"></column>
  <column label="sbid" name="sbid" type="Integer" xid="default2"></column>
  <column label="runstate" name="runstate" type="String" xid="default3"></column>
  <column label="updatetime" name="updatetime" type="DateTime" xid="default4"></column>
  <column label="fdl" name="fdl" type="Decimal" xid="default5"></column>
  <column label="userid" name="userid" type="Integer" xid="default6"></column>
  <column label="dzid" name="dzid" type="Integer" xid="default7"></column>
  <column label="dprice" name="dprice" type="Decimal" xid="default8"></column>
  <column label="zyggl" name="zyggl" type="Decimal" xid="default9"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="yearMonthData" idColumn="updatetime"><column label="月度总金额" name="sum_fdl" type="Decimal" xid="xid1"></column>
  <column label="日期年月" name="updatetime" type="String" xid="xid2"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="Data" idColumn="status"><column label="状态" name="status" type="Boolean" xid="xid3"></column>
  <data xid="default10">[{&quot;status&quot;:&quot;&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="font-size:medium;">
          <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-icon-bottom btn-only-icon" icon="icon-chevron-left" onClick="backBtnClick" xid="backBtn"> 
              <i class="icon-chevron-left" />  
              <span></span> 
            </a><div class="x-titlebar-title"></div>  
          </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background-color:#F0F0F0;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="width:95%;margin-left:auto;margin-right:auto;margin-top:2.5%;">
   <div class="x-col x-col-fixed" xid="col1" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-color" label="月" xid="monthBtn" onClick="monthBtnClick" bind-css="{'btn-color': $model.Data.val(&quot;status&quot;)==true,'btn-color-default': $model.Data.val(&quot;status&quot;)==false}">
   <i xid="i1"></i>
   <span xid="span1">月</span></a>
  </div>
   <div class="x-col x-col-fixed" xid="col2" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-color-default" label="年" xid="yearBtn" onClick="yearBtnClick" bind-css="{'btn-color-default': $model.Data.val(&quot;status&quot;)==true,'btn-color': $model.Data.val(&quot;status&quot;)==false}">
   <i xid="i2"></i>
   <span xid="span2">年</span></a></div>
   <div class="x-col" xid="col3"></div>
  <div class="x-col x-col-fixed x-col-center" xid="col4" style="width:auto;line-height:normal;text-align:center;"><span xid="span5" style="font-weight:bold;font-size:small;vertical-align:middle;"><![CDATA[合计：]]></span></div>
  <div class="x-col x-col-fixed x-col-center" xid="col10" style="width:auto;"><span xid="span8" style="font-weight:bold;font-size:small;"><![CDATA[]]></span></div></div>
  <div xid="div1" style="height:75%;margin:auto;width:95%;"></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col5"></div>
   <div class="x-col x-col-fixed" xid="col6" style="background-color:white;width:auto;">
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="&lt;" xid="preBtn" onClick="preBtnClick">
   <i xid="i3"></i>
   <span xid="span3">&amp;lt;</span></a></div>
   <div class="x-col" xid="col7" style="background-color:white;text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-link center-block" label="2016" xid="labelBtn" style="width:100%;text-align:center;">
   <i xid="i5"></i>
   <span xid="span6">2016</span></a></div>
  <div class="x-col x-col-fixed" xid="col8" style="background-color:white;width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="&gt;" xid="nextBtn" onClick="nextBtnClick">
   <i xid="i4"></i>
   <span xid="span4">&amp;gt;</span></a></div>
  <div class="x-col" xid="col9"></div>
  </div></div>
  </div> 
</div>