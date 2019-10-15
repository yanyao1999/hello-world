<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<style>
.card {           
    position: relative;
    display: inline-block;
}

.card .img-top {
    display: none;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 99;
}

.card:hover .img-top {
    display: inline;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="w3-padding-large" id="main">
        <!-- Header/Home -->
        <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
            <h1 class="w3-jumbo"><span class="w3-hide-small">I'm</span> Er Yan Yao.</h1>
            <p style="font-size: large">Information Technology Degree Student</p>
            <div class="card">
                <img src="img/photo-grey.jpg" alt="boy" class="w3-image" width="992" height="1108" />
                <img src="img/photo.jpg" alt="boy" class="img-top w3-image" width="992" height="1108" />
            </div>

        </header>

        <div class="w3-content w3-justify w3-text-white w3-padding-64" id="about">
            <h2 class="w3-text-light-grey">My Name</h2>
            <hr style="width: 200px" class="w3-opacity" />
            <p>
                Hello! Welcome to my website. My name is Er Yan Yao and my nickname is Yan. I was born in 1999. 
                I am Malaysian and I am from Johor. I have got one sister. I am a student in the second year
                in University at INTI International University. My major is Bachelor of Information Technology. 
                My favourite programming language is JAVA. It was amazing. My hobbies is study and swimming.
                I hope my site can help you get the information that you want. Thank you and wish you having a nice day.
            </p>
            <br />
            <h3 class="w3-padding-16 w3-text-light-grey">My Skills Set</h3>
            <p class="w3-wide">C++</p>
            <div class="w3-white">
                <div class="w3-dark-grey" style="height: 28px; width: 70%"></div>
            </div>
            <p class="w3-wide">Java</p>
            <div class="w3-white">
                <div class="w3-dark-grey" style="height: 28px; width: 50%"></div>
            </div>
            <p class="w3-wide">ASP.NET</p>
            <div class="w3-white">
                <div class="w3-dark-grey" style="height: 28px; width: 35%"></div>
            </div>
            <br />
            <br />

            <h3 class="w3-padding-16 w3-text-light-grey">My Resume</h3>
            <asp:Button ID="btndownload" class="w3-button w3-white w3-hover-black w3-padding-16" runat="server" Text="Download" OnClick="btndownload_Click" />
            &nbsp;
            <i class="fa fa-download w3-xlarge"></i>

            <br />
            <br />
            <br />

            <h4 class="w3-padding-16 w3-text-light-grey">GET IN TOUCH</h4>

            <asp:ImageButton ID="imgfb" CssClass="imgbtn" runat="server" ImageUrl="~/img/icon/fb2.png" OnClick="imgfb_Click" OnClientClick="target ='_blank';" ToolTip="Facebook" />
            &nbsp;
            <asp:ImageButton ID="imgIns" CssClass="imgbtn" runat="server" ImageUrl="~/img/icon/ins2.png" OnClick="imgIns_Click" OnClientClick="target ='_blank';" ToolTip="Instagram" />
            &nbsp;
            <asp:ImageButton ID="imgTwi" CssClass="imgbtn" runat="server" ImageUrl="~/img/icon/twi2.png" OnClick="imgTwi_Click" OnClientClick="target ='_blank';" ToolTip="Twitter" />
            &nbsp;
            <asp:ImageButton ID="imgWhat" CssClass="imgbtn" runat="server" ImageUrl="~/img/icon/what2.png" OnClick="imgWhat_Click" OnClientClick="target ='_blank';" ToolTip="WhatsApp" />

        </div>

    </div>
</asp:Content>

