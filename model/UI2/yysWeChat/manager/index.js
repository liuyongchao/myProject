define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	
	
	
	
	
Model.prototype.modelLoad = function(event){
	var me = this;
    var uploader = this.comp("attachmentSimple1").uploader;
    var data = this.comp("picData");
  uploader.on('onSuccess',function(event){
	  	
        data.saveData();
      });
    
        };
        
        
 // 图片路径转换
		Model.prototype.getImageUrl = function(value, ownerID) {
			if (value) {
				try {
					var jsonList = eval("(" + value + ")");
					if (jsonList instanceof Array) {
						var realFileName = jsonList[0]["realFileName"];
						var storeFileName = jsonList[0]["storeFileName"];
						var operateType = "browse";
						var url = '/baas/justep/attachment/simpleFileStore?realFileName=' + realFileName + '&amp;amp;storeFileName=' + storeFileName + '&amp;amp;ownerID=' + ownerID
								+ '&amp;amp;operateType=' + operateType;
						return require.toUrl(url);
					}
				} catch (e) {
					console.log(e);
				}
			}
			return "";
		};       
        
        
        
        
        
        
        
	return Model;
});




