using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTime.Text = DateTime.Now.ToString("dd MMMM"+", "+" hh:mm:ss tt");
    }


    protected void btnGO_Click(object sender, EventArgs e)
    {
        if (ddlMenu.SelectedItem.Text.Equals("HOME"))
        {
            Response.Redirect("Default.aspx");
        }
        else if (ddlMenu.SelectedItem.Text.Equals("ABOUT ME"))
        {
            Response.Redirect("Default.aspx#about");
        }
        else if (ddlMenu.SelectedItem.Text.Equals("EDUCATION"))
        {
            Response.Redirect("Education.aspx");
        }
        else if (ddlMenu.SelectedItem.Text.Equals("WORK EXPERIENCE"))
        {
            Response.Redirect("workExp.aspx");
        }
        else if (ddlMenu.SelectedItem.Text.Equals("FEEDBACK"))
        {
            Response.Redirect("Feedback.aspx");
        }
        else if (ddlMenu.SelectedItem.Text.Equals("CONTACT"))
        {
            Response.Redirect("Contact.aspx");
        }
    }
    
    
}
