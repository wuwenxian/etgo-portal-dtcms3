﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2014-12-21 17:33:20.
		本页面代码由DTcms模板引擎生成于 2014-12-21 17:33:20. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(model.category_id,"商品介绍");

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" name=\"description\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.jqzoom.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/js/picture.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/js/cart.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n	$(function(){\r\n		tabs('#goodsTabs','click');\r\n		//智能浮动层\r\n		$(\"#tab_head\").smartFloat();\r\n	});\r\n</");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<div class=\"header\" style=\"background-color:orangered;\">\r\n  <div class=\"header_inner\" >\r\n    <h1 class=\"logo\" style=\"background:none;line-height:27px;width:150px;\">\r\n        儿童棋院对弈平台\r\n      <!--<a title=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weburl));
	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</a>-->\r\n    </h1>\r\n    <!--<ul class=\"nav\">\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("\">首页</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">购物商城</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">资源下载</a></li>\r\n    </ul>-->\r\n    <!--<div class=\"search\">\r\n      <input id=\"keywords\" name=\"keywords\" class=\"input\" type=\"text\" x-webkit-speech=\"\" autofocus=\"\" placeholder=\"输入回车搜索\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" />\r\n      <input class=\"submit\" type=\"submit\" value=\"搜索\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\" />\r\n    </div>-->\r\n    <script type=\"text/javascript\">\r\n        $.ajax({\r\n            type: \"POST\",\r\n            url: \"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_check_login\",\r\n            dataType: \"json\",\r\n            timeout: 20000,\r\n            success: function (data, textStatus) {\r\n                if (data.status == 1) {\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出</a></li>');\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">学员中心</a></li>');\r\n                } else {\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">注册</a></li>');\r\n                    $(\"#menu\").append('<li><a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">登录</a></li>');\r\n                }\r\n            }\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n    <ul id=\"menu\" class=\"menu\">\r\n      <!--<li><a href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a></li>\r\n      <li><a href=\"");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("\">购物车<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_cart_count\"></");
	templateBuilder.Append("script>件</a></li>-->\r\n    </ul>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"left710\">\r\n   <!--Left-->\r\n    <div class=\"main_box\">\r\n      ");
	string category_nav = get_category_menu("goods_list", model.category_id);

	templateBuilder.Append("\r\n      <dl class=\"head green\">\r\n        <dt>购物商城</dt>\r\n        <dd>\r\n          <span>当前位置：<a href=\"");
	templateBuilder.Append(linkurl("index",""));

	templateBuilder.Append("\">首页 </a>&gt;<a href=\"");
	templateBuilder.Append(linkurl("goods",""));

	templateBuilder.Append("\">购物商城</a>");
	templateBuilder.Append(Utils.ObjectToStr(category_nav));
	templateBuilder.Append("</span>\r\n        </dd>\r\n      </dl>\r\n      <div class=\"line20\"></div>\r\n      \r\n      <!--商品图片-->\r\n      <div class=\"left294\">\r\n        <!--幻灯片开始-->\r\n        <div class=\"pictureDIV\">\r\n          <div id=\"preview\" class=\"spec-preview\">\r\n            <span class=\"jqzoom\"><img /></span>\r\n          </div>\r\n          <!--缩图开始-->\r\n          <div class=\"spec-scroll\">\r\n            <a class=\"prev\">&lt;</a>\r\n            <a class=\"next\">&gt;</a>\r\n            <div class=\"items\">\r\n              <ul>\r\n                ");
	if (model.albums!=null)
	{

	foreach(DTcms.Model.article_albums modelt in model.albums)
	{

	templateBuilder.Append("\r\n                <li><img bimg=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.original_path));
	templateBuilder.Append("\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(modelt.thumb_path));
	templateBuilder.Append("\" onmousemove=\"preview(this);\" /></li>\r\n                ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n              </ul>\r\n            </div>\r\n          </div>\r\n          <!--缩图结束-->\r\n        </div>\r\n        <!--幻灯片结束-->\r\n      </div>\r\n       <!--/商品图片-->\r\n      \r\n      <!--商品属性-->\r\n      <div class=\"pro-attr right356\">\r\n        <h1>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</h1>\r\n        <div class=\"pro-items\">\r\n          <dl>\r\n            <dt>商品货号：</dt>\r\n            <dd>" + Utils.ObjectToStr(model.fields["goods_no"]) + "</dd>\r\n          </dl>\r\n          <dl>\r\n            <dt>库存情况：</dt>\r\n            <dd>" + Utils.ObjectToStr(model.fields["stock_quantity"]) + "件</dd>\r\n          </dl>\r\n          <dl>\r\n            <dt>销售价格：</dt>\r\n            <dd><b class=\"red\">￥" + Utils.ObjectToStr(model.fields["sell_price"]) + "</b></dd>\r\n          </dl>\r\n          <dl>\r\n            <dt>会员价格：</dt>\r\n            <dd>\r\n              ");
	decimal user_price = get_user_article_price(model.id);

	if (user_price>-1)
	{

	templateBuilder.Append("\r\n              <b class=\"red\">￥");
	templateBuilder.Append(Utils.ObjectToStr(user_price));
	templateBuilder.Append("</b>\r\n              ");
	}
	else
	{

	templateBuilder.Append("\r\n              登录可见\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n            </dd>\r\n          </dl>\r\n          <dl>\r\n            <dt>上架时间：</dt>\r\n            <dd>");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</dd>\r\n          </dl>\r\n        </div>\r\n        <div class=\"pro-btns\">\r\n		  <div class=\"input-box\">\r\n              购买数量：<input name=\"goods_id\" id=\"goods_id\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" /><input type=\"text\" name=\"goods_quantity\" id=\"goods_quantity\" value=\"1\" class=\"txt\" style=\"ime-mode:disabled\" />\r\n          </div>\r\n          <div class=\"btn-box\">\r\n            ");
	if (Utils.StrToInt(Utils.ObjectToStr(model.fields["stock_quantity"]), 0)>0)
	{

	templateBuilder.Append("\r\n            <a href=\"javascript:void(0);\" class=\"add\" onclick=\"CartAdd(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', 0, '");
	templateBuilder.Append(linkurl("shopping","cart"));

	templateBuilder.Append("');\">加入购物车</a>\r\n            <a href=\"javascript:void(0);\" class=\"buy\" onclick=\"CartAdd(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("', 1, '");
	templateBuilder.Append(linkurl("shopping","confirm"));

	templateBuilder.Append("');\">立即购买</a>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n            <a title=\"该商品供货紧张，无法加入购物车\" class=\"add-over\">加入购物车</a>\r\n            <a title=\"该商品供货紧张，无法立即购买\" class=\"buy-over\">立即购买</a>\r\n            ");
	}	//end for if

	templateBuilder.Append("\r\n          </div>\r\n          \r\n        </div>\r\n        <div class=\"line10\"></div>\r\n        <!--分享-->\r\n        ");

	templateBuilder.Append("        <!-- JiaThis Button BEGIN --> \r\n        <div id=\"ckepop\">\r\n            <span class=\"jiathis_txt\">分享到：</span>\r\n            <a class=\"jiathis_button_qzone\"></a>\r\n            <a class=\"jiathis_button_tqq\"></a>\r\n            <a class=\"jiathis_button_tsina\"></a>\r\n            <a class=\"jiathis_button_renren\"></a>\r\n            <a class=\"jiathis_button_douban\"></a>\r\n            <a class=\"jiathis_button_taobao\"></a>\r\n            <a class=\"jiathis_button_ujian\"></a>\r\n            <a class=\"jiathis_button_fav\"></a> \r\n            <a class=\"jiathis_button_copy\">复制</a> \r\n            <a href=\"http://www.jiathis.com/share/?uid=90225\" class=\"jiathis jiathis_txt jiathis_separator jtico jtico_jiathis\" target=\"_blank\">更多</a> \r\n            <a class=\"jiathis_counter_style\"></a> \r\n        </div> \r\n        <!-- JiaThis Button END -->\r\n        <script type=\"text/javascript\">var jiathis_config={data_track_clickback:true};</");
	templateBuilder.Append("script> \r\n        <script type=\"text/javascript\" src=\"http://v2.jiathis.com/code/jia.js?uid=1336353133859589\" charset=\"utf-8\"></");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n        <!--/分享-->\r\n      </div>\r\n      <!--/商品属性-->\r\n      \r\n      <div class=\"line20\"></div>\r\n      <!--商品介绍-->\r\n      <div id=\"goodsTabs\">\r\n        <div id=\"tab_head\" class=\"pro-tabs\">\r\n          <ul>\r\n            <li><a class=\"current\" href=\"javascript:;\">商品介绍</a></li>\r\n            <li><a href=\"javascript:;\">商品评论</a></li>\r\n          </ul>\r\n        </div>\r\n        <div class=\"line10\"></div>\r\n        <div class=\"tab_inner entry\" style=\"display:block;\">\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n          <div class=\"line10\"></div>\r\n        </div>\r\n        \r\n        <div class=\"tab_inner\">\r\n          <!--评论-->\r\n          ");
	if (model.is_msg==1)
	{


	int comment_count = get_comment_count(model.id, "is_lock=0");

	templateBuilder.Append("<!--取得评论总数-->\r\n      <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n      <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.pagination.js\"></");
	templateBuilder.Append("script>\r\n      <script type=\"text/javascript\">\r\n        $(function(){\r\n          //初始化评论列表\r\n          AjaxPageList('#comment_list', '#pagination', 10, ");
	templateBuilder.Append(Utils.ObjectToStr(comment_count));
	templateBuilder.Append(", '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=comment_list&article_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("', '");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/images/user_avatar.png');\r\n          //初始化发表评论表单\r\n          AjaxInitForm('comment_form', 'btnSubmit', 1);\r\n        });\r\n      </");
	templateBuilder.Append("script>\r\n      <div class=\"comment_box\">\r\n        <h3 class=\"base_tit\"><span><a href=\"#Add\">发表评论</a></span>共有");
	templateBuilder.Append(Utils.ObjectToStr(comment_count));
	templateBuilder.Append("访客发表了评论</h3>\r\n        <ol id=\"comment_list\" class=\"comment_list\">\r\n          <p style=\"line-height:35px;\">暂无评论，快来抢沙发吧！</p>\r\n          <!--\r\n          <li>\r\n            <div class=\"floor\">#3</div>\r\n            <div class=\"avatar\">\r\n              <img src=\"images/user_avatar.png\" width=\"36\" height=\"36\" />\r\n            </div>\r\n            <div class=\"inner\">\r\n              <p>你这个评论的模块是怎么实现的，能不能写一下哇，觉得很好看</p>\r\n              <div class=\"meta\">\r\n                <span class=\"blue\">匿名用户</span>\r\n                <span class=\"time\">2012-08-13 00:45</span>\r\n              </div>\r\n            </div>\r\n            <div class=\"answer\">\r\n              <div class=\"meta\">\r\n                <span class=\"right time\">2012-11-15 00:21:05</span>\r\n                <span class=\"blue\">管理员回复：</span>\r\n              </div>\r\n              <p>我晕，我什么时候购买博主的模板了？？首先声明的是 我的微之恋是用大前端的html页面，HTML页面我也是Ctrl+s进行另存为下来的，然后我用wordpress的程序改了改就发布了，很多bug我也懒得改，功能也没有大前段的主题功能强大，也就可以认为一个演示版吧，首先说的是本人木有购买，再者更没有购买后无耻进行发布，我只是靠的自己的双手收获我想要的成功，我想这就是开源精神吧？我把自己写的代码进行开源有何不可？况且我只是另存为了3个页面其他的PHP程序还不是都是我写的，大家爱用就用，不爱用也不要冷嘲热讽好不好?拿着我的免费主题说我的坏话，我真的很无语！</p>\r\n            </div>\r\n          </li>\r\n          -->\r\n        </ol>\r\n      </div>\r\n      <div class=\"line20\"></div>\r\n      <div id=\"pagination\" class=\"flickr\"></div><!--放置页码-->\r\n      <div class=\"comment_add\">\r\n        <h3 class=\"base_tit\">我来说几句吧<a name=\"Add\"></a></h3>\r\n        <form id=\"comment_form\" name=\"comment_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=comment_add&article_id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\">\r\n        <div class=\"comment_editor\">\r\n          <textarea id=\"txtContent\" name=\"txtContent\" class=\"input\" style=\"width:658px;height:70px;\" datatype=\"*\" sucmsg=\" \"></textarea>\r\n        </div>\r\n        <div class=\"subcon\">\r\n          <input id=\"btnSubmit\" name=\"submit\" class=\"btn right\" type=\"submit\" value=\"提交评论（Ctrl+Enter）\" />\r\n          <span>验证码：</span>\r\n          <input id=\"txtCode\" name=\"txtCode\" type=\"text\" class=\"input small\" datatype=\"s4-4\" errormsg=\"请填写4位验证码\" sucmsg=\" \" onkeydown=\"if(event.ctrlKey&&event.keyCode==13){document.getElementById('btnSubmit').click();return false};\"  />\r\n          <a href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n        </div>\r\n        </form>\r\n      </div>");


	}	//end for if

	templateBuilder.Append("\r\n          <!--/评论-->\r\n        </div>\r\n        \r\n      </div>\r\n      <!--/商品介绍-->\r\n      \r\n      <!--同类推荐-->\r\n      <div class=\"related\">\r\n        <h3 class=\"base_tit\">本类推荐</h3>\r\n        <ul class=\"img_list\">\r\n          ");
	DataTable goods_list = get_article_list("goods", 0, 10, "is_red=1 and id<>" + model.id);

	foreach(DataRow dr in goods_list.Rows)
	{

	templateBuilder.Append("\r\n          <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\"><img alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\"><span>" + Utils.ObjectToStr(dr["title"]) + "</span></a></li>\r\n           ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n      <!--/同类推荐-->\r\n      \r\n    </div>\r\n    <!--/Left-->\r\n  </div>\r\n  \r\n  <div class=\"left264\">\r\n    <!--Sidebar-->\r\n    <div class=\"sidebar\">\r\n      <h3>商品类别</h3>\r\n      <ul class=\"navbar\">\r\n        ");
	DataTable category_list2 = get_category_child_list("goods", 0);

	int cdr2__loop__id=0;
	foreach(DataRow cdr2 in category_list2.Rows)
	{
		cdr2__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <h4><a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr2["title"]) + "</a></h4>\r\n          <div class=\"list\">\r\n            ");
	DataTable category_list21 = get_category_child_list("goods", Utils.StrToInt(Utils.ObjectToStr(cdr2["id"]), 0));

	int cdr21__loop__id=0;
	foreach(DataRow cdr21 in category_list21.Rows)
	{
		cdr21__loop__id++;


	if (Utils.StrToInt(Utils.ObjectToStr(cdr21["id"]), 0)==model.category_id)
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr21["id"])));

	templateBuilder.Append("\" class=\"current\">" + Utils.ObjectToStr(cdr21["title"]) + "</a>\r\n            ");
	}
	else
	{

	templateBuilder.Append("\r\n            <a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(cdr21["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr21["title"]) + "</a>\r\n            ");
	}	//end for if

	}	//end for if

	templateBuilder.Append("\r\n          </div>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n      <div class=\"clear\"></div>\r\n      <h3><a class=\"arrow\" href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\" title=\"查看更多\">&gt;</a>推荐商品</h3>\r\n      <div class=\"focus_list\">\r\n        <ul>\r\n          ");
	DataTable redgoods = get_article_list("goods", 0, 6, "is_red=1 and img_url<>''");

	foreach(DataRow dr in redgoods.Rows)
	{

	templateBuilder.Append("\r\n          <li>\r\n            <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n              <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" width=\"100\" height=\"100\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" />\r\n              <span>" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n            </a>\r\n          </li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n        <div class=\"clear\"></div>\r\n      </div>\r\n      <h3><a class=\"arrow\" href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\" title=\"查看更多\">&gt;</a>人气排行</h3>\r\n      <ul class=\"rank_list\">\r\n        ");
	DataTable hotgoods = get_article_list("goods", 0, 10, "", "click desc,id desc");

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotgoods.Rows)
	{
		hotdr__loop__id++;


	if (hotdr__loop__id==1)
	{

	templateBuilder.Append("\r\n        <li class=\"active\">\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n          <span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span>\r\n          <i class=\"num\">");
	templateBuilder.Append(hotdr__loop__id.ToString());

	templateBuilder.Append("</i><a href=\"");
	templateBuilder.Append(linkurl("goods_show",Utils.ObjectToStr(hotdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(hotdr["title"]) + "</a>\r\n        </li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    <!--/Sidebar-->\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<div class=\"footer\">\r\n  <div class=\"footer_inner\">\r\n    <div class=\"foot_nav\">\r\n      \r\n      <!--<a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\">关于我们</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">新闻资讯</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">购物商城</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">资源下载</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">图片分享</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("feedback"));

	templateBuilder.Append("\">留言反馈</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("link"));

	templateBuilder.Append("\">友情链接</a>|\r\n      <a target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("content","contact"));

	templateBuilder.Append("\">联系我们</a>|-->\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    <div class=\"copyright\">\r\n      <p>版权所有 儿童棋院 版本：V");
	templateBuilder.Append(Utils.GetVersion().ToString());

	templateBuilder.Append(" © Copyright 2009 - 2014. dtcms.net. All Rights Reserved. &nbsp; </p>\r\n    </div>\r\n  </div>\r\n</div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
