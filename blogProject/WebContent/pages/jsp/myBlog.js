$(function(){
	//页面加载完成之后执行
	pageInit();
});
function pageInit(){
	//创建jqGrid组件
	$("#mb-table").jqGrid(
			{
				url : '<%=request.getContextPath()%>/resources/plugins/jqgrid/data/JSONData.json',//组件创建完成之后请求数据的url
				datatype : "json",//请求数据返回的类型。可选json,xml,txt
				colNames : [ '标题', '状态', '阅读', '评论', '评论权限','操作'],//jqGrid的列显示名字
				colModel : [ //jqGrid每一列的配置信息。包括名字，索引，宽度,对齐方式.....
				             {name : 'title',index : 'title',width : 500}, 
				             {name : 'status',index : 'status',width : 90}, 
				             {name : 'readTotal',index : 'readTotal',width : 100}, 
				             {name : 'comment',index : 'comment',width : 80,align : "right"}, 
				             {name : 'commentLimit',index : 'commentLimit',width : 80,align : "right"}, 
				             {name : 'act',index : 'act',width : 80,align : "right"}, 
				           ],
				rowNum : 10,//一页显示多少条
				rowList : [ 10, 20, 30 ],//可供用户选择一页显示多少条
				pager : '#pager2',//表格页脚的占位符(一般是div)的id
				sortname : 'title',//初始化的时候排序的字段
				sortorder : "desc",//排序方式,可选desc,asc
				mtype : "post",//向后台请求数据的ajax的类型。可选post,get
				viewrecords : true,
				caption : "my blog",//表格的标题名字
				autowidth: true
			});
	/*创建jqGrid的操作按钮容器*/
	/*可以控制界面上增删改查的按钮是否显示*/
	jQuery("#mb-table").jqGrid('navGrid', '#pager2', {edit : true,add : true,del : true});
}