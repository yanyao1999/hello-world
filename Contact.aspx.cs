using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiViewForm.ActiveViewIndex = 0;
        }
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        MultiViewForm.ActiveViewIndex = 1;

        if (ddlCountry.SelectedItem.Text.Equals("Malaysia"))
        {
            lblName.Text = txtFname.Text.ToUpper() + " " + txtLname.Text.ToUpper();
            lblCompany.Text = txtCompany.Text.ToUpper();
            lblEmail.Text = txtEmail2.Text.ToUpper();
            lblJob.Text = txtJob.Text.ToUpper();
            lblContact.Text = txtContact.Text;
            lblCountry.Text = ddlCountry.Text;
            lblState.Text = ddlState.Text;
            lblCity.Text = ddlCity.Text;
            lblBusiness.Text = ddlBusiness.Text;
            lblDate.Text = txtDate.Text;
        }
        else
        {
            lblName.Text = txtFname.Text.ToUpper() + " " + txtLname.Text.ToUpper();
            lblCompany.Text = txtCompany.Text.ToUpper();
            lblEmail.Text = txtEmail2.Text.ToUpper();
            lblJob.Text = txtJob.Text.ToUpper();
            lblContact.Text = txtContact.Text;
            lblCountry.Text = ddlCountry.Text;
            lblState.Text = "  -";
            lblCity.Text = "  -";
            lblBusiness.Text = ddlBusiness.Text;
            lblDate.Text = txtDate.Text;
        }
       
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlCountry.SelectedItem.Text.Equals("Malaysia"))
        {
            ddlState.Enabled = true;
            ddlCity.Enabled = true;           
        }
    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
      
        if (ddlState.SelectedItem.Text.Equals("Negeri Sembilan"))
        {
            ddlCity.DataSourceID = "xmlCitySembilan";
        }
        else if (ddlState.SelectedItem.Text.Equals("Johor"))
        {
            ddlCity.DataSourceID = "xmlCityJohor";
        }
        else if (ddlState.SelectedItem.Text.Equals("Kedah"))
        {
            ddlCity.DataSourceID = "XmlCityKedah";
        }
        else if (ddlState.SelectedItem.Text.Equals("Kelantan"))
        {
            ddlCity.DataSourceID = "XmlCityKelantan";
        }
        else if (ddlState.SelectedItem.Text.Equals("Melaka"))
        {
            ddlCity.DataSourceID = "XmlCityMelaka";
        }
        else if (ddlState.SelectedItem.Text.Equals("Pahang"))
        {
            ddlCity.DataSourceID = "XmlCityPahang";
        }
        else if (ddlState.SelectedItem.Text.Equals("Perak"))
        {
            ddlCity.DataSourceID = "XmlCityPerak";
        }
        else if (ddlState.SelectedItem.Text.Equals("Perlis"))
        {
            ddlCity.DataSourceID = "XmlCityPerlis";
        }
        else if (ddlState.SelectedItem.Text.Equals("Pulau Pinang"))
        {
            ddlCity.DataSourceID = "XmlCityPenang";
        }
        else if (ddlState.SelectedItem.Text.Equals("Sabah"))
        {
            ddlCity.DataSourceID = "XmlCitySabah";
        }
        else if (ddlState.SelectedItem.Text.Equals("Sarawak"))
        {
            ddlCity.DataSourceID = "XmlCitySarawak";
        }
        else if (ddlState.SelectedItem.Text.Equals("Selangor"))
        {
            ddlCity.DataSourceID = "XmlCityJohor";
        }
        else if (ddlState.SelectedItem.Text.Equals("Terengganu"))
        {
            ddlCity.DataSourceID = "XmlCityTerengganu";
        }
         
    }

    protected void btnCalendar_Click(object sender, ImageClickEventArgs e)
    {
        if (cal.Visible == false)
        {
            cal.Visible = true;
        }
        else
        {
            cal.Visible = false;
        }
        
    }

    protected void cal_SelectionChanged1(object sender, EventArgs e)
    {
        txtDate.Text = cal.SelectedDate.ToShortDateString();
        cal.Visible = false;
    }
}