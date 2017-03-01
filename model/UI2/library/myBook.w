<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:146px;top:232px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="booksData" idColumn="id" confirmRefresh="true" limit="20"> 
      <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="标题" name="fTitle" type="String" xid="xid3"></column>
  <column label="图片" name="fImg" type="String" xid="xid4"></column>
  <column label="类型" name="fType" type="String" xid="xid5"></column>
  <column label="作者" name="fAuthor" type="String" xid="xid6"></column>
  <column label="出版年份" name="fYear" type="Date" xid="xid7"></column>
  <data xid="default1">[{&quot;id&quot;:&quot;1&quot;,&quot;fTitle&quot;:&quot;The animal experimentation debatea reference handbook /&quot;,&quot;fImg&quot;:&quot;./img/2.jpg&quot;,&quot;fType&quot;:&quot;电子书&quot;,&quot;fAuthor&quot;:&quot;David E. Newton&quot;,&quot;fYear&quot;:&quot;2014&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;fTitle&quot;:&quot;The animal experimentation debatea reference handbook /&quot;,&quot;fImg&quot;:&quot;./img/2.jpg&quot;,&quot;fType&quot;:&quot;纸质书&quot;,&quot;fAuthor&quot;:&quot;David E. Newton&quot;,&quot;fYear&quot;:&quot;2015&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;fTitle&quot;:&quot;The animal experimentation debatea reference handbook /&quot;,&quot;fImg&quot;:&quot;./img/1.jpg&quot;,&quot;fType&quot;:&quot;电子书&quot;,&quot;fAuthor&quot;:&quot;David E. Newton&quot;,&quot;fYear&quot;:&quot;2016&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;fTitle&quot;:&quot;The animal experimentation debatea reference handbook /&quot;,&quot;fImg&quot;:&quot;./img/2.jpg&quot;,&quot;fType&quot;:&quot;纸质书&quot;,&quot;fAuthor&quot;:&quot;David E. Newton&quot;,&quot;fYear&quot;:&quot;2017&quot;},{&quot;id&quot;:&quot;5&quot;,&quot;fTitle&quot;:&quot;The animal experimentation debatea reference handbook /&quot;,&quot;fImg&quot;:&quot;./img/1.jpg&quot;,&quot;fType&quot;:&quot;纸质书&quot;,&quot;fAuthor&quot;:&quot;David E. Newton&quot;,&quot;fYear&quot;:&quot;2013&quot;},{&quot;id&quot;:&quot;6&quot;,&quot;fTitle&quot;:&quot;The animal experimentation debatea reference handbook /&quot;,&quot;fImg&quot;:&quot;./img/2.jpg&quot;,&quot;fType&quot;:&quot;电子书&quot;,&quot;fAuthor&quot;:&quot;David E. Newton&quot;,&quot;fYear&quot;:&quot;2016&quot;}]</data></div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel2"> 
    <div class="x-panel-top" xid="top1" height="48"> 
      <div xid="div4"> 
        </div> 
    <div component="$UI/system/components/justep/titleBar/titleBar" title="简目资料（476）" class="x-titlebar" xid="titleBar2">
   <div class="x-titlebar-left" xid="left2">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-chevron-left" xid="i1"></i>
     <span xid="span9"></span></a> </div> 
   <div class="x-titlebar-title" xid="title2">简目资料（476）</div>
   <div class="x-titlebar-right reverse" xid="right2"></div></div></div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C6F5A9AD87B000014B2C1F702F301BBF"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1"> 
        <div class="x-contents-content" xid="bookshelvesContent"> 
          <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
            xid="scrollView1"> 
            <div class="x-content-center x-pull-down container" xid="div1"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"/>  
              <span class="x-pull-down-label" xid="span5">下拉刷新...</span> 
            </div>  
            <div class="x-scroll-content" xid="div2"> 
              <div component="$UI/system/components/justep/list/list" class="x-list"
                xid="bookList" data="booksData" disablePullToRefresh="false"> 
                <ul class="x-list-template list-group" xid="listTemplateUl1"> 
                  <li xid="li1" class="list-group-item"> 
                    <div xid="div25" class="media"> 
                      <div xid="div5" class="media-left"> 
                        <img alt="" xid="image" class="img-rounded media-object"
                          dir="rtl" bind-attr-src='$model.toUrl(val("fImg"))' style="height:80px;width:70px;"/> 
                      </div>  
                      <div xid="div6" class="media-body"> 
                        <h5 xid="h51" bind-text="ref('fTitle')" class="media-heading lead text-black"
                          style="color:#000000;font-size:medium;"><![CDATA[]]></h5>  
                          
                        <div xid="div11"> 
                          <span xid="span18" style="font-size:xx-small;"><![CDATA[作者]]></span>  
                          <span xid="span19" bind-text='ref("fAuthor")' style="font-size:xx-small;"/> 
                        </div> 
                      <div xid="div8">
   <span xid="span7" style="font-size:xx-small;"><![CDATA[出版年份]]></span>
   <span xid="span8" bind-text='ref("fYear")' style="font-size:xx-small;"></span></div><div xid="div7"> 
                          <span xid="type" class="text-danger" bind-text='ref("fType")' style="color:#FF0000;font-size:large;" />  
                          </div></div>  
                      <div xid="nextDiv" class="media-right"> 
                        <a component="$UI/system/components/justep/button/button"
                          class="btn btn-link btn-only-icon" label="button" xid="nextBtn"
                          icon="icon-chevron-right" target="content3"> 
                          <i xid="i9" class="icon-chevron-right" style="color:#C0C0C0;"/>  
                          <span xid="span14"/> 
                        </a> 
                      </div> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up" xid="div3"> 
              <span class="x-pull-up-label" xid="span6">加载更多...</span> 
            </div> 
          </div> 
        </div>  
        </div> 
    </div>  
    </div> 
</div>