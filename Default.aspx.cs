using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        imgfb.Attributes.Add("onmouseover", "src='../img/icon/fb1.png'");
        imgfb.Attributes.Add("onmouseout", "src='../img/icon/fb2.png'");

        imgIns.Attributes.Add("onmouseover", "src='../img/icon/ins1.png'");
        imgIns.Attributes.Add("onmouseout", "src='../img/icon/ins2.png'");

        imgTwi.Attributes.Add("onmouseover", "src='../img/icon/twi1.png'");
        imgTwi.Attributes.Add("onmouseout", "src='../img/icon/twi2.png'");

        imgWhat.Attributes.Add("onmouseover", "src='../img/icon/what1.png'");
        imgWhat.Attributes.Add("onmouseout", "src='../img/icon/what2.png'");
    }

    protected void btnToEducation_Click(object sender, EventArgs e)
    {

    }
    protected void btndownload_Click(object sender, EventArgs e)
    {
        Response.ContentType = "image/jpeg";
        Response.AppendHeader("Content-Disposition", "attachment; filename=resume.PNG");
        Response.TransmitFile(Server.MapPath("~/img/resume.PNG"));
        Response.End();
    }
    protected void imgfb_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/yy165");
    }

    protected void imgIns_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.instagram.com/yanyao99/");
    }

    protected void imgTwi_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://twitter.com/yanyao1999");
    }

    protected void imgWhat_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://whatsapp.com/yanyao1999");
    }
}