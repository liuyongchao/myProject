<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:254px;left:262px;" onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/baasData" autoLoad="false"
      xid="userData" queryAction="queryHj_user" saveAction="saveHj_user" url="/NingboHaijinguangfuAPP/NingboHaijinguangfuAPP_action"
      tableName="hj_user" idColumn="id">
      <master xid="default46"/>  
      <filter name="filter0" xid="filter1"/>  
      <filter name="filter1" xid="filter2"/>  
      <column label="id" name="id" type="Integer" xid="default1"/>  
      <column label="userbh" name="userbh" type="String" xid="default2"/>  
      <column label="username" name="username" type="String" xid="default3"/>  
      <column label="usersec" name="usersec" type="String" xid="default4"/>  
      <column label="usertel" name="usertel" type="String" xid="default5"/>  
      <column label="useremail" name="useremail" type="String" xid="default6"/>  
      <column label="usersf" name="usersf" type="String" xid="default7"/>  
      <column label="usersx" name="usersx" type="String" xid="default8"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="memoryData" idColumn="username"><column label="用户名" name="username" type="String" xid="xid1"></column>
  <column label="密码" name="userpassword" type="String" xid="xid2"></column>
  <data xid="default9">[{}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1" style="width:100%;height:100%;"> 
    <div class="x-panel-top" xid="top1" style="position:relative;z-index:3;">
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1" title="会员登录" style="background-color:#E2E3E5;color:#000000;font-weight:bold;font-size:20px;vertical-align:middle;text-align:center;"> 
        <div class="x-titlebar-left" xid="left1">
          </div>  
        <div class="x-titlebar-title" xid="title1">会员登录</div>  
        <div class="x-titlebar-right reverse" xid="right1"/>
      </div>
    </div>  
     
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-panel-content" xid="content1" style="vertical-align:middle;text-align:center;width:100%;"> 
      <div xid="div1" style="height:40%;background-color:#ECEDEF;"><div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row2" style="height:100%;position:relative;z-index:0;">
   <div class="x-col" xid="col4"></div>
   <div class="x-col" xid="col5">
  <img src="$UI/NingboHaijinguangfuAPP/img/logo.png" alt="" xid="image2" style="width:100%;"></img></div>
   <div class="x-col" xid="col6"></div></div></div><div xid="div2" style="position:relative;background-color:white;"><div component="$UI/system/components/justep/row/row" class="x-row row-line" xid="row7"> 
        <div class="x-col" xid="col10">
          <div xid="div7" class="input-group "> 
            <span class="input-group-addon" xid="span6" style="color:#868686;vertical-align:middle;text-align:center;font-size:small;padding-right:4px;"><![CDATA[]]>  
              <i class="icon-person" xid="i7" />
            </span>  
            <span xid="span1" class="input-group-addon" style="color:#B8B8B8;font-size:small;padding-left:0px;"><![CDATA[账号 丨]]></span>
            <input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="usernameInput" style="vertical-align:middle;color:#5B5B5B;font-size:small;font-family:微软雅黑;" bind-ref='memoryData.ref("username")' /> 
          </div>
        </div> 
      </div><div component="$UI/system/components/justep/row/row" class="x-row row-line" xid="row8"> 
        <div class="x-col" xid="col16">
          <div class="input-group" xid="div8"> 
            <span class="input-group-addon" xid="span3" style="color:#868686;vertical-align:middle;text-align:center;font-size:small;padding-right:4px;"> 
              <i class="icon-locked" xid="i3" />
            </span>  
            <span xid="span4" class="input-group-addon" style="color:#B8B8B8;font-size:small;padding-left:0px;"><![CDATA[密码 丨]]></span>
            <input component="$UI/system/components/justep/input/password" class="form-control" xid="passwordInput" style="vertical-align:middle;color:#5B5B5B;font-size:small;font-family:微软雅黑;" bind-ref='memoryData.ref("userpassword")' />
          </div>
        </div> 
      </div>
  </div><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1" style="width:100%;position:relative;z-index:0;background-color:white;"> 
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3"> 
          <div class="x-col" xid="col9">
            <a component="$UI/system/components/justep/button/button" class="btn btn-default btn_login" label="登录" xid="loginBtn" style="background-color:#30B4FF;width:100%;" onClick="loginBtnClick"> 
              <i xid="i1" />  
              <span xid="span2">登录</span>
            </a>
          </div>
        </div>  
        <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4"> 
          <div class="x-col x-col-fixed" xid="col13" style="width:auto;margin:5px;position:relative;">
            <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" label="记住密码" style="color:#808080;" xid="remember" onChange="rememberChange" checked="true" />
          </div>  
          <div class="x-col" xid="col14"></div>
          <div class="x-col" xid="col15" />  
          <div class="x-col x-col-fixed" xid="col8" style="width:auto;">
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label pull-right" label="修改密码" xid="changePWDBtn" style="color:#808080;vertical-align:middle;text-align:center;" onClick="changePWDBtnClick"> 
              <i xid="i2" />  
              <span xid="span5">修改密码</span>
            </a>
          </div>
        </div> 
      </div> 
    </div></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    style="top:8px;left:103px;" src="$UI/NingboHaijinguangfuAPP/detial.w" onClose="windowDialog1Close" routable="true" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2"
    src="$UI/NingboHaijinguangfuAPP/changePWD.w" style="top:17px;left:89px;" routable="true" forceRefreshOnOpen="true"/>  
  <span component="$UI/system/components/justep/messageDialog/messageDialog"
    xid="messageDialog1" title="温馨提示：" message="用户名或密码输入不正确，请核对后重新输入！" style="top:18px;left:138px;"/>
</div>
