<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:220px;left:841px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="userData" queryAction="querySA_OPPERSON" saveAction="saveSA_OPPERSON" url="/cgsgrade/cgsgrade_action" idColumn="SID" tableName="SA_OPPERSON">
   <master xid="default46"></master>
  <filter name="filter0" xid="filter1"></filter>
  <filter name="filter1" xid="filter2"></filter>
  <column label="SID" name="SID" type="String" xid="default92"></column>
  <column label="名称" name="SNAME" type="String" xid="default93"></column>
  <column label="编码" name="SCODE" type="String" xid="default94"></column>
  <column label="身份证号" name="SIDCARD" type="String" xid="default95"></column>
  <column label="数字编号" name="SNUMB" type="Integer" xid="default96"></column>
  <column label="登录名" name="SLOGINNAME" type="String" xid="default97"></column>
  <column label="密码(MD5)" name="SPASSWORD" type="String" xid="default98"></column>
  <column label="SPASSWORDTIMELIMIT" name="SPASSWORDTIMELIMIT" type="Integer" xid="default99"></column>
  <column label="SPASSWORDMODIFYTIME" name="SPASSWORDMODIFYTIME" type="Date" xid="default100"></column>
  <column label="所属部门" name="SMAINORGID" type="String" xid="default101"></column>
  <column label="密级" name="SSAFELEVELID" type="String" xid="default102"></column>
  <column label="SSEQUENCE" name="SSEQUENCE" type="Integer" xid="default103"></column>
  <column label="SVALIDSTATE" name="SVALIDSTATE" type="Integer" xid="default104"></column>
  <column label="描述" name="SDESCRIPTION" type="String" xid="default105"></column>
  <column label="性别" name="SSEX" type="String" xid="default106"></column>
  <column label="SBIRTHDAY" name="SBIRTHDAY" type="Date" xid="default107"></column>
  <column label="SJOINDATE" name="SJOINDATE" type="Date" xid="default108"></column>
  <column label="出生地" name="SHOMEPLACE" type="String" xid="default109"></column>
  <column label="学历" name="SDEGREE" type="String" xid="default110"></column>
  <column label="毕业院校" name="SGRADUATESCHOOL" type="String" xid="default111"></column>
  <column label="专业" name="SSPECIALITY" type="String" xid="default112"></column>
  <column label="学年制" name="SSCHOOLLENGTH" type="String" xid="default113"></column>
  <column label="职称" name="STITLE" type="String" xid="default114"></column>
  <column label="婚姻状况" name="SMARRIAGE" type="String" xid="default115"></column>
  <column label="证件号码" name="SCARDNO" type="String" xid="default116"></column>
  <column label="证件类型" name="SCARDKIND" type="String" xid="default117"></column>
  <column label="家庭住址" name="SFAMILYADDRESS" type="String" xid="default118"></column>
  <column label="邮编" name="SZIP" type="String" xid="default119"></column>
  <column label="MSN" name="SMSN" type="String" xid="default120"></column>
  <column label="QQ" name="SQQ" type="String" xid="default121"></column>
  <column label="电子邮件" name="SMAIL" type="String" xid="default122"></column>
  <column label="移动电话" name="SMOBILEPHONE" type="String" xid="default123"></column>
  <column label="家庭电话" name="SFAMILYPHONE" type="String" xid="default124"></column>
  <column label="办公电话" name="SOFFICEPHONE" type="String" xid="default125"></column>
  <column label="VERSION" name="VERSION" type="Integer" xid="default126"></column>
  <column label="SPHOTOLASTMODIFIED" name="SPHOTOLASTMODIFIED" type="Date" xid="default127"></column>
  <column label="国家" name="SCOUNTRY" type="String" xid="default128"></column>
  <column label="省" name="SPROVINCE" type="String" xid="default129"></column>
  <column label="市" name="SCITY" type="String" xid="default130"></column>
  <column label="英文名称" name="SENGLISHNAME" type="String" xid="default131"></column>
  <column label="MUSER_ID" name="MUSER_ID" type="String" xid="default132"></column>
  <column label="MUSER_ORG_CODE" name="MUSER_ORG_CODE" type="String" xid="default133"></column>
  <column label="MUSER_ORG_NAME" name="MUSER_ORG_NAME" type="String" xid="default134"></column>
  <column label="MUSER_REMARK" name="MUSER_REMARK" type="String" xid="default135"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="头像修改"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">头像修改</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="userData" autoLoad="false">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1">
     
     
     
     
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;">
   <img src="" alt="" xid="image2" style="height:100px;width:100px;" height="133px"></img>
  </div>
  <div class="x-col" xid="col5">
   
   <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="false" xid="buttonGroup10">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="头像修改" xid="pictureBtn" onClick="" style="height:100px;">
    <i xid="i23"></i>
    <span xid="span23">头像修改</span></a> </div></div></div>
  </li> </ul> </div></div>
  </div> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive" style="top:15px;left:48px;"></span></div>