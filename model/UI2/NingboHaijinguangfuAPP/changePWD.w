<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:314px;left:542px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="userData" queryAction="queryHj_user" saveAction="saveHj_user" url="/NingboHaijinguangfuAPP/NingboHaijinguangfuAPP_action" idColumn="id" tableName="hj_user">
   <master xid="default46"></master>
  <filter name="filter0" xid="filter1"></filter>
  <filter name="filter1" xid="filter2"></filter>
  <column label="id" name="id" type="Integer" xid="default9"></column>
  <column label="userbh" name="userbh" type="String" xid="default10"></column>
  <column label="username" name="username" type="String" xid="default11"></column>
  <column label="usersec" name="usersec" type="String" xid="default12"></column>
  <column label="usertel" name="usertel" type="String" xid="default13"></column>
  <column label="useremail" name="useremail" type="String" xid="default14"></column>
  <column label="usersf" name="usersf" type="String" xid="default15"></column>
  <column label="usersx" name="usersx" type="String" xid="default16"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1" style="position:relative;z-index:1;"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1" style="height:100%;background-color:#E2E3E5;color:#000000;"> 
        <div class="x-titlebar-left" xid="div1"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            xid="button1" icon="icon-chevron-left" onClick="{operation:'window.close'}"> 
            <i xid="i1" class="icon-chevron-left"/>  
            <span xid="span1"></span> 
          </a> 
        <span xid="span6" style="font-size:18px;font-weight:bold;vertical-align:middle;text-align:center;" class="span_font"><![CDATA[修改密码]]></span>
  </div>  
          
        <div class="x-titlebar-right reverse" xid="div3"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="确定" xid="enterBtn" style="background-color:#5DB6E0;width:100px;font-size:16px;font-weight:bold;" onClick="enterBtnClick">
   <i xid="i3"></i>
   <span xid="span3">确定</span></a></div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup3" style="width:80%;margin-top:5%;">
   
   
  <div xid="div2" style="width:100%;margin:10px 0px 0px 0px;padding:0px 0px 0px 0px;" class="input-group">
   <div xid="div7" class="input-group " style="width:100%;">
    <span xid="span9" style="color:#868686;font-size:16px;margin-right:-10px;padding-right:0px;width:65px;" class="input-group-addon"><![CDATA[　用户名]]></span>
    <span xid="span28" style="color:#22BFAD;font-size:xx-large;font-weight:bold;text-align:left;width:22px;font-style:inherit;bottom:-5px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;position:relative;" class="input-group-addon"><![CDATA[]]></span><input component="$UI/system/components/justep/input/input" xid="loginNameInput" style="vertical-align:middle;font-weight:bold;color:#868686;width:100%;font-size:16px;" class="form-control x-inputText s-input" placeHolder="用户名" onBlur="loginNameInputBlur"></input>
  </div> </div>
  <div xid="div6" style="width:100%;margin:10px 0px 0px 0px;padding:0px 0px 0px 0px;" class="input-group">
   <div xid="div5" class="input-group " style="width:100%;">
    <span xid="span18" style="color:#868686;font-size:16px;margin-right:-10px;padding-right:0px;width:65px;" class="input-group-addon"><![CDATA[　　姓名]]></span>
    <span xid="span27" style="color:#22BFAD;font-size:xx-large;font-weight:bold;text-align:left;width:22px;font-style:inherit;bottom:-5px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;position:relative;" class="input-group-addon"><![CDATA[]]></span><input component="$UI/system/components/justep/input/input" xid="userNameInput" style="vertical-align:middle;font-weight:bold;color:#868686;width:100%;font-size:16px;" class="form-control x-inputText s-input" placeHolder="姓名" readonly="true"></input>
  </div> </div>
  <div xid="div9" style="width:100%;margin:10px 0px 0px 0px;padding:0px 0px 0px 0px;" class="input-group">
   <div xid="div8" class="input-group " style="width:100%;">
    <span xid="span19" style="color:#868686;font-size:16px;margin-right:-10px;padding-right:0px;width:65px;" class="input-group-addon"><![CDATA[　原密码]]></span>
    <span xid="span23" style="color:#22BFAD;font-size:xx-large;font-weight:bold;text-align:left;width:22px;font-style:inherit;bottom:-5px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;position:relative;" class="input-group-addon"><![CDATA[*]]></span><input component="$UI/system/components/justep/input/input" xid="oldpwdInput" style="vertical-align:middle;font-weight:bold;color:#868686;width:100%;font-size:16px;" class="form-control x-inputText s-input" placeHolder="原密码"></input>
  </div> </div>
  <div xid="div11" style="width:100%;margin:10px 0px 0px 0px;padding:0px 0px 0px 0px;" class="input-group">
   <div xid="div10" class="input-group " style="width:100%;">
    <span xid="span20" style="color:#868686;font-size:16px;margin-right:-10px;padding-right:0px;width:65px;" class="input-group-addon"><![CDATA[　　密码]]></span>
    <span xid="span24" class="input-group-addon" style="color:#22BFAD;font-size:xx-large;font-weight:bold;text-align:left;width:22px;font-style:inherit;bottom:-5px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;position:relative;"><![CDATA[*]]></span><input component="$UI/system/components/justep/input/input" xid="newpwdInput" style="vertical-align:middle;font-weight:bold;color:#868686;width:100%;font-size:16px;" class="form-control x-inputText s-input" placeHolder="密码"></input>
  </div> </div>
  <div xid="div13" style="width:100%;margin:10px 0px 0px 0px;padding:0px 0px 0px 0px;" class="input-group">
   <div xid="div12" class="input-group " style="width:100%;">
   <span xid="span21" class="input-group-addon" style="color:#868686;font-size:16px;margin-right:-10px;padding-right:0px;width:65px;"><![CDATA[确认密码]]></span>
   <span xid="span26" style="color:#22BFAD;font-size:xx-large;font-weight:bold;text-align:left;width:22px;position:relative;bottom:-5px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;" class="input-group-addon"><![CDATA[*]]></span><input component="$UI/system/components/justep/input/input" xid="enterpwdInput" style="vertical-align:middle;font-weight:bold;color:#868686;width:100%;font-size:16px;" class="form-control x-inputText s-input" placeHolder="确认密码"></input>
  </div>
  </div></div>
  </div>  
    </div> 
<span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" title="温馨提示：" message="两次密码输入不一致，请重新输入！" style="top:8px;left:132px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog2" title="温馨提示：" message="用户名或密码输入不正确，请核对后重新输入！" style="top:10px;left:179px;"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog3" title="温馨提示：" message="新密码设置成功！" style="top:16px;left:247px;"></span></div>