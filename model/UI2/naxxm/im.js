define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("./plugin/layui/layui");
	require("css!./plugin/layui/css/layui").load();
	require("css!./plugin/layui/css/layui.mobile").load();
	var Model = function(){
		this.callParent();
	};

layui.config({
        dir: './plugin/layui/'
    }).use(['layer','mobile'],function(layer,mobile){
  var mobile = layui.mobile
  ,layim = mobile.layim
  ,layer = layui.layer;
  //演示自动回复
  
  var autoReplay = [
    '您好，我现在有事不在，一会再和您联系。', 
    '你没发错吧？face[微笑] ',
    '洗澡中，请勿打扰，偷窥请购票，个体四十，团体八折，订票电话：一般人我不告诉他！face[哈哈] ',
    '你好，我是主人的美女秘书，有什么事就跟我说吧，等他回来我会转告他的。face[心] face[心] face[心] ',
    'face[威武] face[威武] face[威武] face[威武] ',
    '<（@￣︶￣@）>',
    '你要和我说话？你真的要和我说话？你确定自己想说吗？你一定非说不可吗？那你说吧，这是自动回复。',
    'face[黑线]  你慢慢说，别急……',
    '(*^__^*) face[嘻嘻] ，是贤心吗？'
  ];
  layui.config({dir:'./plugin/layui/'})
  layim.config({
    //上传图片接口
    uploadImage: {
      url: '/upload/image' //（返回的数据格式见下文）
      ,type: '' //默认post
    } 
    
    //上传文件接口
    ,uploadFile: {
      url: '/upload/file' //（返回的数据格式见下文）
      ,type: '' //默认post
    }
    
    ,init: {
      //我的信息
      mine: {
        "username": "纸飞机" //我的昵称
        ,"id": 123 //我的ID
        ,"avatar": "http://img.25pp.com/uploadfile/app/icon/20170120/1484906350483118.jpg@140w_140h" //我的头像
        ,"sign": "懒得签名"
      }
      //我的好友列表
      ,friend: [{
        "groupname": "前端码屌"
        ,"id": 1
        ,"online": 2
        ,"list": [{
          "username": "贤心"
          ,"id": "100001"
          ,"avatar": "http://tp1.sinaimg.cn/1571889140/180/40030060651/1"
          ,"sign": "这些都是测试数据，实际使用请严格按照该格式返回"
        },{
          "username": "Z_子晴"
          ,"id": "108101"
          ,"avatar": "http://tva3.sinaimg.cn/crop.0.0.512.512.180/8693225ajw8f2rt20ptykj20e80e8weu.jpg"
          ,"sign": "微电商达人"
        },{
          "username": "Lemon_CC"
          ,"id": "102101"
          ,"avatar": "http://tp2.sinaimg.cn/1833062053/180/5643591594/0"
          ,"sign": ""
        },{
          "username": "马小云"
          ,"id": "168168"
          ,"avatar": "http://tp4.sinaimg.cn/2145291155/180/5601307179/1"
          ,"sign": "让天下没有难写的代码"
          ,"status": "offline"
        },{
          "username": "徐小峥"
          ,"id": "666666"
          ,"avatar": "http://tp2.sinaimg.cn/1783286485/180/5677568891/1"
          ,"sign": "代码在囧途，也要写到底"
        }]
      },{
        "groupname": "网红"
        ,"id": 2
        ,"online": 3
        ,"list": [{
          "username": "罗玉凤"
          ,"id": "121286"
          ,"avatar": "http://tp1.sinaimg.cn/1241679004/180/5743814375/0"
          ,"sign": "在自己实力不济的时候，不要去相信什么媒体和记者。他们不是善良的人，有时候候他们的采访对当事人而言就是陷阱"
        },{
          "username": "长泽梓Azusa"
          ,"id": "100001222"
          ,"sign": "我是日本女艺人长泽あずさ"
          ,"avatar": "http://tva1.sinaimg.cn/crop.0.0.180.180.180/86b15b6cjw1e8qgp5bmzyj2050050aa8.jpg"
        },{
          "username": "大鱼_MsYuyu"
          ,"id": "12123454"
          ,"avatar": "http://tp1.sinaimg.cn/5286730964/50/5745125631/0"
          ,"sign": "我瘋了！這也太準了吧  超級笑點低"
        },{
          "username": "谢楠"
          ,"id": "10034001"
          ,"avatar": "http://tp4.sinaimg.cn/1665074831/180/5617130952/0"
          ,"sign": ""
        },{
          "username": "柏雪近在它香"
          ,"id": "3435343"
          ,"avatar": "http://tp2.sinaimg.cn/2518326245/180/5636099025/0"
          ,"sign": ""
        }]
      },{
        "groupname": "我心中的女神"
        ,"id": 3
        ,"online": 1
        ,"list": [{
          "username": "林心如"
          ,"id": "76543"
          ,"avatar": "http://tp3.sinaimg.cn/1223762662/180/5741707953/0"
          ,"sign": "我爱贤心"
        },{
          "username": "佟丽娅"
          ,"id": "4803920"
          ,"avatar": "http://tp4.sinaimg.cn/1345566427/180/5730976522/0"
          ,"sign": "我也爱贤心吖吖啊"
        }]
      }]
    }
  });

  
  
  //监听发送消息
  layim.on('sendMessage', function(data){
    var To = data.to;
    //console.log(data);

    //演示自动回复
    setTimeout(function(){
      var obj = {};
      if(To.type === 'group'){
        obj = {
          username: '模拟群员'+(Math.random()*100|0)
          ,avatar: layui.cache.dir + 'images/face/'+ (Math.random()*72|0) + '.gif'
          ,id: To.id
          ,type: To.type
          ,content: autoReplay[Math.random()*9|0]
        }
      } else {
        obj = {
          username: To.name
          ,avatar: To.avatar
          ,id: To.id
          ,type: To.type
          ,content: autoReplay[Math.random()*9|0]
        }
      }
      layim.getMessage(obj);
    }, 1000);
  });
  
  //监听查看更多记录
  layim.on('chatlog', function(data){
    console.log(data);
    layer.msg("do something");
  });
});




	return Model;
});