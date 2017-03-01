function openDatabase(model){
        var me = this;
        //document.addEventListener("deviceready", onDeviceReady, false);
        // sqlite设备就绪
        //function onDeviceReady() {
        		me.db = window.openDatabase("X5_DEMO_DB", null, null, -1);
                //me.db = window.sqlitePlugin.openDatabase({name : model.rem_database+".db"});
                
        //}
        
}

function createTable(model){
        
        try{
                this.db.transaction(function(tx) {
                        tx.executeSql('CREATE TABLE IF NOT EXISTS '+model.rem_table+' (id integer primary key, key text, value text);');
                });
        //默认插入一条数据
        
                var totalcount=0;
                //判断表里有几条数据
                this.db.transaction(function(tx) {
             tx.executeSql("select count(*) as count from "+model.rem_table, [], function(tx, res) {
                     totalcount=res.rows.item(0).count;
                     //alert(totalcount);
             });
                });
                //如果无数据填入数据
                if(totalcount<1){
                        this.db.transaction(function(tx) {
                                        tx.executeSql('INSERT INTO '+model.rem_table+' (key,value) VALUES ("username","")');
                                        tx.executeSql('INSERT INTO '+model.rem_table+' (key,value) VALUES ("pwd","")');
                                        tx.executeSql('INSERT INTO '+model.rem_table+' (key,value) VALUES ("isremember",0)');
                                        tx.executeSql('INSERT INTO '+model.rem_table+' (key,value) VALUES ("islogin",0)');
                                        tx.executeSql('INSERT INTO '+model.rem_table+' (key,value) VALUES ("userid",0)');
                        
                        });
                }
        }catch(e){
                if(this.rem_supportweb==true){
                        localStorage.username="";
                        localStorage.pwd="";
                        localStorage.isremember=0;
                        localStorage.islogin=0;
                        localStorage.userid=0;
                }
                
        }
                
}
function isLogin(model){
        try{
                this.db.transaction(function(tx) {
                        tx.executeSql("select value from "+model.rem_table+" where key='islogin';", [], function(tx, res) {
                                        if(res.rows.item(0).value==1){
                                                model.shellImpl.showPage("home");
                                        }else{
                                                model.shellImpl.showPage("login");
                                        }
                        });
                });
        }catch(e){
                
                if(model.rem_supportweb==true){
                        if(localStorage.islogin==1){
                                model.shellImpl.showPage("home");
                        }else{
                                model.shellImpl.showPage("login");
                        }
                }else{
                        model.shellImpl.showPage("login");
                }
        }
}
function isRemember(model){
        //查询数据库判断是否记住了密码
        try{
                this.db.transaction(function(tx) {
                        tx.executeSql("select value from "+model.rem_table+" where key='isremember';", [], function(tx, res) {
                                        
                                if(res.rows.item(0).value==1){
                                
                                                tx.executeSql("select value from "+model.rem_table+" where key='username';", [], function(tx, res) {
                                                        
                                                        model.comp("username").val(res.rows.item(0).value);
                                                        
                                                }, function(e) {
                                                        alert("ERROR: " + e.message);
                                                });
                                                tx.executeSql("select value from "+model.rem_table+" where key='pwd';", [], function(tx, res) {
                                                        
                                                        model.comp("pwd").val(res.rows.item(0).value);
                                                        
                                                }, function(e) {
                                                        alert("ERROR: " + e.message);
                                                });
                                                model.comp("remembercb").set({"checked":true,"value":1});
                                }else{
                                        model.comp("username").val("");
                                        model.comp("pwd").val("");
                                        model.comp("remembercb").set({"checked":false,"value":0});
                                }
                        });
                });
        }catch(e){
                if(model.rem_supportweb==true){
                        if(localStorage.isremember==1){
                                model.comp("username").val(localStorage.username);
                                model.comp("pwd").val(localStorage.pwd);
                                model.comp("remembercb").set({"checked":true,"value":1});
                        }else{
                                model.comp("username").val("");
                                model.comp("pwd").val("");
                                model.comp("remembercb").set({"checked":false,"value":0});
                        }
                        
                }else{
                        model.comp("username").val("");
                        model.comp("pwd").val("");
                        model.comp("remembercb").set({"checked":false,"value":0});
                }
        }
}
function updateUser(model,username,pwd,isRemember){
        
        //更新sqlite中的用户名密码
        try{
                this.db.transaction(function(tx) {
                        tx.executeSql("UPDATE "+model.rem_table+" SET value = ? WHERE key='username';", [ username ], function(tx, res) {
                        }, function(e) {
                                alert("ERROR: " + e.message);
                        });
                });
                
                this.db.transaction(function(tx) {
                        tx.executeSql("UPDATE "+model.rem_table+" SET value = ? WHERE key='pwd';", [ pwd ], function(tx, res) {
                        }, function(e) {
                                alert("ERROR: " + e.message);
                        });
                });
                this.db.transaction(function(tx) {
                        tx.executeSql("UPDATE "+model.rem_table+" SET value = ? WHERE key='isremember';", [ isRemember ], function(tx, res) {
                        }, function(e) {
                                alert("ERROR: " + e.message);
                        });
                });
                this.db.transaction(function(tx) {
                        tx.executeSql("UPDATE "+model.rem_table+" SET value = ? WHERE key='islogin';", [ 1 ], function(tx, res) {
                        }, function(e) {
                                alert("ERROR: " + e.message);
                        });
                });
        }catch(e){
                if(model.rem_supportweb==true){
                        localStorage.username=username;
                        localStorage.pwd=pwd;
                        localStorage.isremember=isRemember;
                        localStorage.islogin=1;
                        
                }
        }
}
function logout(model){
        try{
                this.db.transaction(function(tx) {
                        tx.executeSql("UPDATE "+model.rem_table+" SET value = ? WHERE key='islogin';", [ 0 ], function(tx, res) {
                                
                        }, function(e) {
                                alert("ERROR: " + e.message);
                        });
                });
        }catch(e){
                if(model.rem_supportweb==true){
                        localStorage.islogin=0;
                }
        }
}