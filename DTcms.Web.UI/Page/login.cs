using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using DTcms.Common;

namespace DTcms.Web.UI.Page
{
    public partial class login : Web.UI.BasePage
    {
        protected string turl = string.Empty;
        /// <summary>
        /// 重写父类的虚方法,此方法将在Init事件前执行
        /// </summary>
        protected override void ShowPage()
        {
            this.Init += new EventHandler(UserPage_Init);
        }

        /// <summary>
        /// OnInit事件,检查用户是否已经登录
        /// </summary>
        void UserPage_Init(object sender, EventArgs e)
        {
            //turl = linkurl("usercenter", "index");
            //turl = linkurl("gogame", "index");
            turl = "/gogame.aspx";
            //if (HttpContext.Current.Request.Url != null && HttpContext.Current.Request.UrlReferrer != null)
            //{
            //    if (HttpContext.Current.Request.Url.ToString().ToLower() != HttpContext.Current.Request.UrlReferrer.ToString().ToLower())
            //    {
            //        turl = HttpContext.Current.Request.UrlReferrer.ToString();
            //    }
            //}
            Utils.WriteCookie(DTKeys.COOKIE_URL_REFERRER, turl); //记住上一页面
            
            Model.users model = GetUserInfo();
            if (model != null)
            {
                //写入登录日志
                //new BLL.user_login_log().Add(model.id, model.user_name, "自动登录");
                //自动登录,跳转URL
                string user_name = model.user_name;
                int sex = 1;
                switch (model.sex)
                {
                    case "男":
                        sex = 1;
                        break;
                    case "女":
                        sex = 0;
                        break;
                    default:
                        sex = 1;
                        break;

                }
                string avatar = model.avatar!=string.Empty?model.avatar:"null";
                
                turl += "?platId=1&nickName=" + user_name + "&sex="+sex+"&imageUrl="+avatar;
                HttpContext.Current.Response.Redirect(turl);
            }
        }

    }
}
