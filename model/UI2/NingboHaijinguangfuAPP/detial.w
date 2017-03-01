<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:212px;left:707px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="hjmv_fdData" queryAction="queryHjmv_fddata" url="/NingboHaijinguangfuAPP/NingboHaijinguangfuAPP_action" tableName="hjmv_fddata" idColumn="id" orderBy="updatetime:desc"><column isCalculate="true" label="dprice" name="sumRMB" type="String" xid="xid1"></column>
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
  <column label="zyggl" name="zyggl" type="Decimal" xid="default9"></column>
  <column label="sbnum" name="sbnum" type="Integer" xid="default10"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="hj_dzData" idColumn="id" queryAction="queryHj_dz" url="/NingboHaijinguangfuAPP/NingboHaijinguangfuAPP_action" tableName="hj_dz"><column label="id" name="id" type="Integer" xid="default45"></column>
  <column label="dzbh" name="dzbh" type="String" xid="default46"></column>
  <column label="dzname" name="dzname" type="String" xid="default47"></column>
  <column label="userid" name="userid" type="Integer" xid="default48"></column>
  <column label="zjrl" name="zjrl" type="String" xid="default49"></column>
  <column label="tzrx" name="tzrx" type="String" xid="default50"></column>
  <column label="bwdate" name="bwdate" type="String" xid="default51"></column>
  <column label="zjgg" name="zjgg" type="String" xid="default52"></column>
  <column label="sf" name="sf" type="String" xid="default53"></column>
  <column label="sx" name="sx" type="String" xid="default54"></column>
  <column label="address" name="address" type="String" xid="default55"></column>
  <column label="dzpic" name="dzpic" type="String" xid="default56"></column>
  <column label="cjqbh" name="cjqbh" type="String" xid="default57"></column>
  <column label="nzjrl" name="nzjrl" type="Decimal" xid="default58"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1" style="width:100%;height:100%;"> 
      <div class="x-panel-top" xid="top1" height="48"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" style="font-size:medium;">
   <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-icon-bottom btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
    <i class="icon-chevron-left" xid="i1"></i>
    <span xid="span8"></span></a><div class="x-titlebar-title" xid="title2"></div>
   </div></div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C73C98EEE66000017295180518701096" style="bottom: 0px;background-color:#F0F0F0;width:100%;height:100%;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2" style="width:100%;" autoPullUp="true" autoAppend="true" onPullDown="scrollView2PullDown">
   <div class="x-content-center x-pull-down container" xid="div4">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span3">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div5" style="width:100%;height:80%;">
  
  
  
  
  
  
  <div component="$UI/system/components/justep/smartContainer/smartContainer" class="x-smartcontainer" xid="smartContainer2" style="margin:0px auto;margin-top:4%;position:relative;width:85%;height:100%;">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="width:100%;z-index:1;position:relative;background-color:white;margin:0px;padding:0px;">
   <div class="x-col x-col-50 " xid="col2" style="vertical-align:middle;text-align:center;position:relative;padding-left:0px;padding-right:0px;width:auto;"><span xid="span9" style="font-size:x-small;font-weight:bold;color:#FFFFFF;position:absolute;bottom:5%;right:auto;text-align:center;vertical-align:middle;width:100%;"><![CDATA[]]></span><img src="$UI/NingboHaijinguangfuAPP/img/zjrl1.png" alt="" xid="image4" style="vertical-align:middle;text-align:center;width:100%;" height="100%"></img>
  </div>
   <div id="container-kWp1" class="x-col" xid="col3" style="vertical-align:middle;text-align:center;position:relative;padding-left:0px;padding-right:0px;width:auto;">
  
  <div id="container-kWp" xid="div2" style="position:relative;margin-right:0px;top:0;left:0;height:85%;" class="x-full"></div>
  <div xid="div3" class="x-full">
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="bottom:3%;position:absolute;">
   <div class="x-col" xid="col6"><span xid="span7" style="font-size:xx-small;color:silver;"><![CDATA[0]]></span></div>
   <div class="x-col" xid="col8"><span xid="span13" style="font-size:xx-small;color:silver;"><![CDATA[W]]></span>
  </div>
   <div class="x-col center-block" xid="col9"><span xid="span12" style="font-size:xx-small;color:silver;"><![CDATA[0]]></span></div></div>
  </div></div>
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="width:90%;margin:0px auto;position:relative;">
   <div class="x-col" xid="col4" style="vertical-align:middle;text-align:center;"><img src="$UI/NingboHaijinguangfuAPP/img/p001.png" alt="" xid="image1" style="text-align:center;width:75%;"></img></div>
   <div class="x-col" xid="col18" style="vertical-align:middle;text-align:center;width:100%;height:100%;" bind-click="col18Click">
   <img src="$UI/NingboHaijinguangfuAPP/img/p004.png" alt="" xid="image47" style="width:75%;"></img></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="width:90%;margin:0px auto;position:relative;">
   <div class="x-col" xid="col24" style="text-align:center;">
   <img src="$UI/testDemo/img/0.png" alt="" xid="image27" style="width:8%;"></img>
   <img src="$UI/testDemo/img/0.png" alt="" xid="image28" style="display:none;width:8%;"></img>
   <img src="$UI/testDemo/img/0.png" alt="" xid="image25" style="display:none;width:8%;"></img>
   <img src="$UI/testDemo/img/0.png" alt="" xid="image26" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image5" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image10" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image48" style="display:none;width:8%;"></img></div>
  <div class="x-col" xid="col26" style="text-align:center;">
   <img src="$UI/testDemo/img/0.png" alt="" xid="image86" style="width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image85" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image83" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image81" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image80" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image84" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image82" style="display:none;width:8%;"></img></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="width:90%;margin:0px auto;position:relative;">
   <div xid="col10" class="x-col" style="vertical-align:middle;text-align:center;"><span xid="span5" style="font-weight:bold;font-size:small;"><![CDATA[日发电量(kWh)]]></span></div>
   <div class="x-col" xid="col11" style="vertical-align:middle;text-align:center;"><span xid="span6" style="vertical-align:middle;text-align:center;font-weight:bold;font-size:small;"><![CDATA[总发电量(kWh)]]></span></div></div><div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row5" style="width:90%;margin:0px auto;">
   <div class="x-col" xid="col13" style="vertical-align:middle;text-align:center;width:100%;height:100%;"><img src="$UI/NingboHaijinguangfuAPP/img/p003.png" alt="" xid="image3" style="width:75%;"></img></div>
   <div class="x-col" xid="col5" style="vertical-align:middle;text-align:center;">
   <img alt="" xid="image2" style="width:75%;" src="$UI/NingboHaijinguangfuAPP/img/p005.png"></img></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7" style="width:90%;margin:0px auto;position:relative;">
   <div class="x-col" xid="col23" style="text-align:center;">
    <img src="$UI/testDemo/img/0.png" alt="" xid="image93" style="width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image92" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image90" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image88" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image87" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image91" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image89" style="display:none;width:8%;"></img></div> 
   <div class="x-col" xid="col1" style="text-align:center;">
    <img src="$UI/testDemo/img/0.png" alt="" xid="image100" style="width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image99" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image97" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image95" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image94" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image98" style="display:none;width:8%;"></img>
  <img src="$UI/testDemo/img/0.png" alt="" xid="image96" style="display:none;width:8%;"></img></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" style="width:90%;margin:0px auto;position:relative;">
   <div xid="col17" class="x-col" style="vertical-align:middle;text-align:center;">
    <span xid="span1" style="font-weight:bold;font-size:small;"><![CDATA[CO2减排(ko)]]></span></div> 
   <div class="x-col" xid="col16" style="vertical-align:middle;text-align:center;">
    <span xid="span2" style="vertical-align:middle;text-align:center;font-weight:bold;font-size:small;"><![CDATA[节约树木(棵)]]></span></div> </div></div></div>
   </div></div>
  </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="FalseDialog" message="网络异常，请重试！" title="温馨提示：" style="top:12px;left:118px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/NingboHaijinguangfuAPP/reportChart.w" routable="true" forceRefreshOnOpen="true" style="top:21px;left:72px;"></span></div>