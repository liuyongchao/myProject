<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:442px;left:109px;"
    onModelConstruct="modelModelConstruct" onLoad="modelLoad" onunLoad="modelUnLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="图片" name="fImgUrl" type="String" xid="xid2"/>  
      <column label="链接地址" name="fUrl" type="String" xid="xid9"/>
    </div>  
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="newsData" queryAction="queryDt_data1" url="/yysWeChat/yysWechat" tableName="dt_data1" idColumn="id"><column label="id" name="id" type="Integer" xid="default1"></column>
  <column label="type" name="type" type="String" xid="default2"></column>
  <column label="zhuti" name="zhuti" type="String" xid="default3"></column>
  <column label="fdate1" name="fdate1" type="String" xid="default4"></column>
  <column label="pnote" name="pnote" type="String" xid="default5"></column>
  <column label="autotime" name="autotime" type="DateTime" xid="default6"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"> 
    <div class="x-panel-content tb-trans"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2" swipe="false" wrap="false" slidable="false" onActiveChange="contents2ActiveChange"> 
        <div class="x-contents-content x-cards" xid="homeContent"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"> 
              
            <div class="x-panel-top" xid="top1" style="background-color:red;"> 
              <p xid="p1" style="display:inline;color:#fff;position:absolute;bottom:0px;left:5px;"><![CDATA[便民导航]]></p><p xid="p2" style="display:inline;color:#fff;position:absolute;bottom:0px;right:5px;"><![CDATA[市民热线：96345]]></p></div><div class="x-panel-content  x-scroll-view" xid="content3" style="bottom: 0px;"> 
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView" onPullDown="scrollViewPullDown" autoAppend="true" pullUpMoveLabel="　" pullUpLabel="　" pullUpLoadingLabel="　" noMoreLoadLabel="　" pullDownLoadingLabel="　" pullDownMoveLabel="　" pullDownLabel="　"> 
                <div class="x-content-center x-pull-down container" xid="div16"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i9"/>  
                  <span class="x-pull-down-label" xid="span17">　</span> 
                </div>  
                <div class="x-scroll-content" xid="div17"> 
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel1"> 
                    <div component="$UI/system/components/bootstrap/carousel/carousel"
                      class="x-carousel carousel" xid="carousel1" auto="true" style="height:133px;"> 
                      <ol class="carousel-indicators" xid="ol1"/>  
                      <div class="x-contents carousel-inner" role="listbox"
                        component="$UI/system/components/justep/contents/contents"
                        active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg" routable="false"> 
                        <div class="x-contents-content" xid="content2"> 
                          <img  src="./main/img/top1.png" alt="" xid="image13" bind-click="openPageClick"
                            class="tb-img1" pagename="./detail.w"/> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div component="$UI/system/components/justep/row/row" class="x-row " xid="row1">
   <div class="x-col " xid="col1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" bind-click="row2Click" style="width:111%;">
   <div class="x-col" xid="col4">
  <a href="https://m.baidu.com/from=844b/s?word=%E4%BD%99%E5%A7%9A%E5%A4%A9%E6%B0%94&amp;sa=tb&amp;ts=0&amp;t_kt=0&amp;ie=utf-8&amp;rsv_t=8581hXzrGOfAHcX%252BIPkzGmtw%252FvIceoKUKa4rBXuOHiucSJBVAniC6UALkA&amp;rsv_pq=16930594268944813694"><img src="$UI/yysWeChat/main/img/002.png" alt="" xid="image1" style="width:100%;"></img></a></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="width:111%;">
   <div class="x-col" xid="col8">
  <a href="http://bm.0574dc.com/bus/mobile/busmobile.php"><img src="$UI/yysWeChat/main/img/003.png" alt="" xid="image2" style="width:100%;" height="100%" dir="ltr"></img></a></div>
   </div></div>
   <div class="x-col" xid="col2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col12"><a href="http://bm.0574dc.com/index.php/Mobile/changtuwang"><img src="$UI/yysWeChat/main/img/004.png" alt="" xid="image3" style="width:100%;" height="100%"></img></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13"><a href="http://bm.0574dc.com/index.php/Mobile/wzsearch"><img src="$UI/yysWeChat/main/img/005.png" alt="" xid="image4" style="width:100%;" height="100%"></img></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col16"><a href="http://bm.0574dc.com/index.php/Mobile/searchtrain"><img src="$UI/yysWeChat/main/img/gaotie.png" alt="" xid="image5" height="100%" style="width:100%;"></img></a></div></div></div>
   </div></div>  
                <div class="x-content-center x-pull-up" xid="div18"> 
                  <span class="x-pull-up-label" xid="span18">　</span> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-contents-content" xid="content1"></div></div> 
    </div>  
    </div> 
</div>
