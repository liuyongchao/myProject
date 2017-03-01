<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:273px;left:410px;height:auto;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="馆藏查询服务"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">馆藏查询服务</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="height:15%;">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col2"></div>
   <div class="x-col" xid="col3"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="width:80%;margin:0 auto;">
   <div class="x-col x-col-fixed" xid="col5" style="width:auto;border:1px solid #F0F0F0"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="button" xid="button1" icon="linear linear-book" style="background-color:#fff;color:gray;border:none">
   <i xid="i1" class="linear linear-book"></i>
   <span xid="span1"></span></a></div>
   <div class="x-col" xid="col6" style="border:1px solid #F0F0F0"><input component="$UI/system/components/justep/input/input" class="form-control" xid="input1"></input></div>
  <div class="x-col x-col-fixed" xid="col16" style="width:auto;border:1px solid #F0F0F0"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="查询" xid="button2" style="background-color:#fff;color:gray;border:none">
   <i xid="i2"></i>
   <span xid="span2">查询</span></a></div>
  </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="width:80%;margin:0 auto;">
   <div class="x-col" xid="col9"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label xid="label1"><![CDATA[查询栏位：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" placeHolder="关键字"></input></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="width:80%;margin:0 auto;">
   <div class="x-col" xid="col12"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label xid="label2"><![CDATA[资料类型：]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" placeHolder="全部馆藏资料"></input></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="margin:0 auto;">
   <div class="x-col" xid="col15">
  </div>
  <div class="x-col" xid="col24"><img src="$UI/library/img/10.jpg" alt="" xid="image1" style="width:100%;"></img></div>
  <div class="x-col" xid="col25"></div></div>
  </div>
  </div> 
</div>