<?xml version="1.0" encoding="UTF-8"?><model xmlns="http://www.justep.com/model"><action xmlns="http://www.w3.org/1999/xhtml" name="NingboHaijinguangfuAPP" impl="NingboHaijinguangfuAPP_action.NingboHaijinguangfuAPP"></action><action xmlns="http://www.w3.org/1999/xhtml" name="queryHj_user" impl="action:common/CRUD/query"><private name="condition" type="String"></private><private name="db" type="String">nbhjgfdata</private><private name="tableName" type="String">hj_user</private><public name="columns" type="Object"></public><public name="filter" type="String"></public><public name="limit" type="Integer"></public><public name="offset" type="Integer"></public><public name="orderBy" type="String"></public><public name="variables" type="Object"></public></action><action xmlns="http://www.w3.org/1999/xhtml" name="saveHj_user" impl="action:common/CRUD/save"><private name="db" type="String">nbhjgfdata</private><private name="permissions" type="Object"><![CDATA[{"hj_user":"usersec"}]]></private><public name="tables" type="List"></public></action><action xmlns="http://www.w3.org/1999/xhtml" name="queryHjmv_fddata" impl="action:common/CRUD/query"><private name="condition" type="String"></private><private name="db" type="String">nbhjgfdata</private><private name="tableName" type="String">hjmv_fddata</private><public name="columns" type="Object"></public><public name="filter" type="String"></public><public name="limit" type="Integer"></public><public name="offset" type="Integer"></public><public name="orderBy" type="String"></public><public name="variables" type="Object"></public></action><action xmlns="http://www.w3.org/1999/xhtml" name="queryHj_dz" impl="action:common/CRUD/query"><private name="condition" type="String"></private><private name="db" type="String">nbhjgfdata</private><private name="tableName" type="String">hj_dz</private><public name="columns" type="Object"></public><public name="filter" type="String"></public><public name="limit" type="Integer"></public><public name="offset" type="Integer"></public><public name="orderBy" type="String"></public><public name="variables" type="Object"></public></action><action xmlns="http://www.w3.org/1999/xhtml" name="yearMonth" impl="NingboHaijinguangfuAPP_action.yearMonth"></action><action xmlns="http://www.w3.org/1999/xhtml" name="yearMonthDays" impl="NingboHaijinguangfuAPP_action.yearMonthDays"></action></model>