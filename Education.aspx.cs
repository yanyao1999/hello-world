using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Education : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Wizard1.ActiveStepIndex == 0)
        {
            btnFY.Enabled = false;
            btnINTI.Enabled = true;
        }
        else
        {
            btnINTI.Enabled = false;
            btnFY.Enabled = true;
        }
    }
     protected void leftbtn2_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageView2.ImageUrl == "~/img/IntiIMG/img1.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img7.jpg";
            lblSchool2.Text = "Bus Stop";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img7.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img6.jpg";
            lblSchool2.Text = "Library Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img6.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img5.jpg";
            lblSchool2.Text = "Activity Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img5.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img4.jpg";
            lblSchool2.Text = "Academic Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img4.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img3.jpg";
            lblSchool2.Text = "Outdoor stadium";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img3.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img2.jpg";
            lblSchool2.Text = "Parking";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img2.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img1.jpg";
            lblSchool2.Text = "Lobby";
        }

    }

    protected void rightbtn2_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageView2.ImageUrl == "~/img/IntiIMG/img1.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img2.jpg";
            lblSchool2.Text = "Parking";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img2.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img3.jpg";
            lblSchool2.Text = "Outdoor stadium";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img3.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img4.jpg";
            lblSchool2.Text = "Academic Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img4.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img5.jpg";
            lblSchool2.Text = "Activity Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img5.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img6.jpg";
            lblSchool2.Text = "Library Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img6.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img7.jpg";
            lblSchool2.Text = "Bus Stop";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img7.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img1.jpg";
            lblSchool2.Text = "Lobby";
        }

    }

    protected void imgbtn11_Click(object sender, ImageClickEventArgs e)
    {
        ImageView2.ImageUrl = "~/img/IntiIMG/img1.jpg";
        lblSchool2.Text = "Lobby";
    }
    protected void imgbtn22_Click(object sender, ImageClickEventArgs e)
    {
        ImageView2.ImageUrl = "~/img/IntiIMG/img2.jpg";
        lblSchool2.Text = "Parking";
    }
    protected void imgbtn33_Click(object sender, ImageClickEventArgs e)
    {
        ImageView2.ImageUrl = "~/img/IntiIMG/img3.jpg";
        lblSchool2.Text = "Outdoor stadium";
    }
    protected void imgbtn44_Click(object sender, ImageClickEventArgs e)
    {
        ImageView2.ImageUrl = "~/img/IntiIMG/img4.jpg";
        lblSchool2.Text = "Academic Block";
    }
    protected void imgbtn55_Click(object sender, ImageClickEventArgs e)
    {
        ImageView2.ImageUrl = "~/img/IntiIMG/img5.jpg";
        lblSchool2.Text = "Activity Block";
    }
    protected void imgbtn66_Click(object sender, ImageClickEventArgs e)
    {
        ImageView2.ImageUrl = "~/img/IntiIMG/img6.jpg";
        lblSchool2.Text = "Library Block";
    }
    protected void imgbtn77_Click(object sender, ImageClickEventArgs e)
    {
        ImageView2.ImageUrl = "~/img/IntiIMG/img7.jpg";
        lblSchool2.Text = "Bus Stop";
    }


    protected void ImageView2_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageView2.ImageUrl == "~/img/IntiIMG/img1.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img2.jpg";
            lblSchool2.Text = "Parking";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img2.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img3.jpg";
            lblSchool2.Text = "Outdoor stadium";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img3.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img4.jpg";
            lblSchool2.Text = "Academic Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img4.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img5.jpg";
            lblSchool2.Text = "Activity Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img5.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img6.jpg";
            lblSchool2.Text = "Library Block";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img6.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img7.jpg";
            lblSchool2.Text = "Bus Stop";
        }
        else if (ImageView2.ImageUrl == "~/img/IntiIMG/img7.jpg")
        {
            ImageView2.ImageUrl = "~/img/IntiIMG/img1.jpg";
            lblSchool2.Text = "Lobby";
        }
    }
    protected void leftbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageView.ImageUrl == "~/img/foonyewIMG/p1001.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1008.jpg";
            lblSchool.Text = "Science Building";
        }

        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1008.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1007.jpg";
            lblSchool.Text = "School Hall";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1007.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1006.jpg";
            lblSchool.Text = "Library Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1006.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1005.jpg";
            lblSchool.Text = "Activity Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1005.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1004.jpg";
            lblSchool.Text = "Academic Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1004.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1003.jpg";
            lblSchool.Text = "Lobby";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1003.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1002.jpg";
            lblSchool.Text = "School Entrance";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1002.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1001.jpg";
            lblSchool.Text = "School Landscape";
        }

    }

    protected void rightbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageView.ImageUrl == "~/img/foonyewIMG/p1001.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1002.jpg";
            lblSchool.Text = "School Entrance";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1002.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1003.jpg";
            lblSchool.Text = "Lobby";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1003.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1004.jpg";
            lblSchool.Text = "Academic Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1004.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1005.jpg";
            lblSchool.Text = "Activity Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1005.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1006.jpg";
            lblSchool.Text = "Library Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1006.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1007.jpg";
            lblSchool.Text = "School Hall";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1007.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1008.jpg";
            lblSchool.Text = "Science Building";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1008.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1001.jpg";
            lblSchool.Text = "School Landscape";
        }

    }

    protected void imgbtn1_Click(object sender, ImageClickEventArgs e)
    {
        ImageView.ImageUrl = "~/img/foonyewIMG/p1001.jpg";
        lblSchool.Text = "School Landscape";
    }
    protected void imgbtn2_Click(object sender, ImageClickEventArgs e)
    {
        ImageView.ImageUrl = "~/img/foonyewIMG/p1002.jpg";
        lblSchool.Text = "School Entrance";
    }
    protected void imgbtn3_Click(object sender, ImageClickEventArgs e)
    {
        ImageView.ImageUrl = "~/img/foonyewIMG/p1003.jpg";
        lblSchool.Text = "Lobby";
    }
    protected void imgbtn4_Click(object sender, ImageClickEventArgs e)
    {
        ImageView.ImageUrl = "~/img/foonyewIMG/p1004.jpg";
        lblSchool.Text = "Academic Block";
    }
    protected void imgbtn5_Click(object sender, ImageClickEventArgs e)
    {
        ImageView.ImageUrl = "~/img/foonyewIMG/p1005.jpg";
        lblSchool.Text = "Activity Block";
    }
    protected void imgbtn6_Click(object sender, ImageClickEventArgs e)
    {
        ImageView.ImageUrl = "~/img/foonyewIMG/p1006.jpg";
        lblSchool.Text = "Library Block";
    }
    protected void imgbtn7_Click(object sender, ImageClickEventArgs e)
    {
        ImageView.ImageUrl = "~/img/foonyewIMG/p1007.jpg";
        lblSchool.Text = "School Hall";
    }
    protected void imgbtn8_Click(object sender, ImageClickEventArgs e)
    {
        ImageView.ImageUrl = "~/img/foonyewIMG/p1008.jpg";
        lblSchool.Text = "Science Building";
    }

    protected void ImageView_Click(object sender, ImageClickEventArgs e)
    {
        if (ImageView.ImageUrl == "~/img/foonyewIMG/p1001.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1002.jpg";
            lblSchool.Text = "School Entrance";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1002.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1003.jpg";
            lblSchool.Text = "Lobby";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1003.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1004.jpg";
            lblSchool.Text = "Academic Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1004.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1005.jpg";
            lblSchool.Text = "Activity Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1005.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1006.jpg";
            lblSchool.Text = "Library Block";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1006.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1007.jpg";
            lblSchool.Text = "School Hall";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1007.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1008.jpg";
            lblSchool.Text = "Science Building";
        }
        else if (ImageView.ImageUrl == "~/img/foonyewIMG/p1008.jpg")
        {
            ImageView.ImageUrl = "~/img/foonyewIMG/p1001.jpg";
            lblSchool.Text = "School Landscape";
        }
    }

    protected void btnFY_Click1(object sender, EventArgs e)
    {
        Wizard1.ActiveStepIndex = 0;
        btnFY.Enabled = false;
        btnINTI.Enabled = true;
        
    }

    protected void btnINTI_Click1(object sender, EventArgs e)
    {
        Wizard1.ActiveStepIndex = 1;
        btnINTI.Enabled = false;
        btnFY.Enabled = true;
    }
}