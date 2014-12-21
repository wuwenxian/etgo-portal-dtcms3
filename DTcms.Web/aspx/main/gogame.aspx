<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.gogame" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<!-- saved from url=(0014)about:internet -->\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\"> \r\n    <!-- \r\n    Smart developers always View Source. \r\n    \r\n    This application was built using Adobe Flex, an open source framework\r\n    for building rich Internet applications that get delivered via the\r\n    Flash Player or to desktops via Adobe AIR. \r\n    \r\n    Learn more about Flex at http://flex.org \r\n    // -->\r\n    <head>\r\n        <title>儿童棋院围棋对弈室</title>\r\n        <meta name=\"google\" value=\"notranslate\" />         \r\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n        <!-- Include CSS to eliminate any default margins/padding and set the height of the html element and \r\n             the body element to 100%, because Firefox, or any Gecko based browser, interprets percentage as \r\n             the percentage of the height of its parent container, which has to be set explicitly.  Fix for\r\n             Firefox 3.6 focus border issues.  Initially, don't display flashContent div so it won't show \r\n             if JavaScript disabled.\r\n        -->\r\n        <style type=\"text/css\" media=\"screen\"> \r\n            html, body  { height:100%; }\r\n            body { margin:0; padding:0; overflow:auto; text-align:center; \r\n                   background-color: #000000; }   \r\n            object:focus { outline:none; }\r\n            #flashContent { display:none; }\r\n        </style>\r\n        \r\n        <!-- Enable Browser History by replacing useBrowserHistory tokens with two hyphens -->\r\n        <!-- BEGIN Browser History required section -->\r\n        <link rel=\"stylesheet\" type=\"text/css\" href=\"gogame/history/history.css\" />\r\n        <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/green");
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\" src=\"gogame/history/history.js\"></");
	templateBuilder.Append("script>\r\n        <!-- END Browser History required section -->  \r\n            \r\n        <script type=\"text/javascript\" src=\"gogame/swfobject.js\"></");
	templateBuilder.Append("script>\r\n        <script type=\"text/javascript\">\r\n            // For version detection, set to min. required Flash Player version, or 0 (or 0.0.0), for no version detection. \r\n            var swfVersionStr = \"10.2.0\";\r\n            // To use express install, set to playerProductInstall.swf, otherwise the empty string. \r\n            var xiSwfUrlStr = \"gogame/playerProductInstall.swf\";\r\n            var flashvars = {};\r\n            var params = {};\r\n            params.quality = \"high\";\r\n            params.bgcolor = \"#000000\";\r\n            params.allowscriptaccess = \"sameDomain\";\r\n            params.allowfullscreen = \"true\";\r\n            var attributes = {};\r\n            attributes.id = \"ETGo\";\r\n            attributes.name = \"ETGo\";\r\n            attributes.align = \"middle\";\r\n            swfobject.embedSWF(\r\n                \"gogame/ETGo.swf\", \"flashContent\",\r\n                \"1000\", \"625\",\r\n                swfVersionStr, xiSwfUrlStr,\r\n                flashvars, params, attributes);\r\n            // JavaScript enabled so display the flashContent div in case it is not replaced with a swf object.\r\n            swfobject.createCSS(\"#flashContent\", \"display:block;text-align:left;\");\r\n        </");
	templateBuilder.Append("script>\r\n    </head>\r\n    <body>\r\n        <!-- SWFObject's dynamic embed method replaces this alternative HTML content with Flash content when enough \r\n             JavaScript and Flash plug-in support is available. The div is initially hidden so that it doesn't show\r\n             when JavaScript is disabled.\r\n        -->\r\n    <!--Header-->\r\n");

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


	templateBuilder.Append("\r\n<!--/Header-->\r\n<div style=\"background-color:Black;padding-top:30px;margin-top:-20px;height:100%;\">\r\n    <table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" > \r\n	<tr> \r\n	<td align=\"center\" style=\"vertical-align:top;\">\r\n        <div id=\"flashContent\">\r\n            <p>\r\n                To view this page ensure that Adobe Flash Player version \r\n                10.2.0 or greater is installed. \r\n            </p>\r\n            <script type=\"text/javascript\">\r\n                var pageHost = ((document.location.protocol == \"https:\") ? \"https://\" : \"http://\");\r\n                document.write(\"<a href='http://www.adobe.com/go/getflashplayer'><img src='\"\r\n                                + pageHost + \"www.adobe.com/images/shared/download_buttons/get_flash_player.gif' alt='Get Adobe Flash player' /></a>\"); \r\n            </");
	templateBuilder.Append("script> \r\n        </div>\r\n        \r\n        <noscript>\r\n            <object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" width=\"1000\" height=\"625\" id=\"ETGo\">\r\n                <param name=\"movie\" value=\"ETGo.swf\" />\r\n                <param name=\"quality\" value=\"high\" />\r\n                <param name=\"bgcolor\" value=\"#000000\" />\r\n                <param name=\"allowScriptAccess\" value=\"sameDomain\" />\r\n                <param name=\"allowFullScreen\" value=\"true\" />\r\n                <!--[if !IE]>-->\r\n                <object type=\"application/x-shockwave-flash\" data=\"ETGo.swf\" width=\"1000\" height=\"625\">\r\n                    <param name=\"quality\" value=\"high\" />\r\n                    <param name=\"bgcolor\" value=\"#000000\" />\r\n                    <param name=\"allowScriptAccess\" value=\"sameDomain\" />\r\n                    <param name=\"allowFullScreen\" value=\"true\" />\r\n                <!--<![endif]-->\r\n                <!--[if gte IE 6]>-->\r\n                    <p> \r\n                        Either scripts and active content are not permitted to run or Adobe Flash Player version\r\n                        10.2.0 or greater is not installed.\r\n                    </p>\r\n                <!--<![endif]-->\r\n                    <a href=\"http://www.adobe.com/go/getflashplayer\">\r\n                        <img src=\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\" alt=\"Get Adobe Flash Player\" />\r\n                    </a>\r\n                <!--[if !IE]>-->\r\n                </object>\r\n                <!--<![endif]-->\r\n            </object>\r\n        </noscript> \r\n\r\n	</td> \r\n</tr> \r\n</table>\r\n</div>     \r\n   </body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
