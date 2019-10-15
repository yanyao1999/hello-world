using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtRange_TextChanged(object sender, EventArgs e)
    {
        txt1Range.Text = txtRange.Text;
        lbl3.Text = txtRange.Text;
    }

    protected void lblRange_TextChanged(object sender, EventArgs e)
    {
        txtRange.Text = txt1Range.Text;
        lbl3.Text = txt1Range.Text;

    }

    protected void rblexperience_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl1.Text = rblexperience.Text;
    }

    protected void blFirst_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl2.Text = blFirst.Text;
    }



    protected void btnHome_Click(object sender, EventArgs e)
    {
     
        Response.Redirect("Default.aspx");
    }


    protected void cvName_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        if (txtName.Text.Length < 8)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        if(txtName.Text.Length < 8)
        {
            lblName.Text = "";
        }
        else
        {
            lblName.Text = "Welcome " + txtName.Text + ".";
            lblName2.Text = txtName.Text;
        }
        
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        if (Int32.Parse(txtAge.Text) <= 120 && Int32.Parse(txtAge.Text) >= 1)
        {
            lblAge.Text = txtAge.Text;
        }
    }

    protected void cvAge_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if(Int32.Parse(txtAge.Text) <= 100 && Int32.Parse(txtAge.Text) >= 1)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}
