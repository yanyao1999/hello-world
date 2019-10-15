<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Education.aspx.cs" Inherits="Education" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="w3-padding-large" id="main">
     <div class="w3-padding-64 w3-content" id="edu">
                <h2 class="w3-text-light-grey">Education</h2>
                <hr style="width: 200px" class="w3-opacity">
                 
                <!-- Grid for photos -->
                <div class="w3-row-padding" style="margin: 0 -16px">
                    <asp:UpdatePanel ID="panelEdu" runat="server">
                        <ContentTemplate>
                            <div style="margin: 0px auto; width: 800px; align-content: center; text-align: center; ">
                                <br />
                                <asp:Button CssClass="btnEDU" ID="btnFY" runat="server" Text="Foon Yew High School" OnClick="btnFY_Click1" />
                                <asp:Button CssClass="btnEDU" ID="btnINTI" runat="server" Text="INTI International University" OnClick="btnINTI_Click1" />
                                <br />
                                <br />
                                <div style="text-align:center;margin:0px auto;border:2px solid white;">
                                <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" DisplaySideBar="false" FinishDestinationPageUrl="~/default.aspx" Width="800px" FinishCompleteButtonText="Go to Home" >
                                    <FinishCompleteButtonStyle Font-Bold="True" BackColor="White" BorderColor="Black" Font-Size="20px" Height="40px" Width="140px" />
                                    <FinishPreviousButtonStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="20px" ForeColor="Black" Height="40px" Width="140px" />
                                    <StartNextButtonStyle BackColor="White" BorderStyle="Solid" Font-Bold="True" Font-Size="20px" Height="40px" Width="140px" BorderColor="Black" BorderWidth="2px" />
                                    <StepPreviousButtonStyle BorderStyle="Solid" />
                                    <WizardSteps>
                                        <asp:WizardStep ID="IntiWizard" runat="server" Title="Foon Yew High School">

                                            <table class="tableDetail">
                                                <tr>
                                                    <td class="title">Foon Yew High School</td>
                                                </tr>
                                                <tr>
                                                    <td class="level">High School Certificate</td>
                                                </tr>
                                                <tr>
                                                    <td class="date">January 2012 until December 2017<br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="intro">
                                                        <br />
                                                        <strong>Introduction:</strong><br />
                                                        Foon Yew High School is the largest Chinese independent high school in Malaysia. It is the only Chinese independent high school with two campuses: one in Stulang Laut, the other in Kulai. Foon Yew High School has two semesters each year. An academic year begins in January and finishes at the end of November, with a near two-week holiday in June.</td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Website: &nbsp;&nbsp;</strong><asp:HyperLink ID="hyperFyk" runat="server" ForeColor="LightSkyBlue"  NavigateUrl="https://fyk.edu.my/" Target="_blank">fyk.edu.my</asp:HyperLink><br />
                                                        <strong>Campus Scenery:</strong><br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <div class="divImg" runat="server">
                                                                <asp:ImageButton ID="ImageView" runat="server" ImageUrl="~/img/foonyewIMG/p1001.jpg" OnClick="ImageView_Click" />
                                                            </div>

                                                            <table class="imgTable" runat="server">
                                                                <tr>
                                                                    <td style="width: 150px; text-align: center; height: 150px;">
                                                                        <asp:ImageButton ID="leftbtn" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/img/btn_l.png" Width="80px" Height="80px" OnClick="leftbtn_Click" />
                                                                    </td>
                                                                    <td style="width: 200px; text-align: center;">
                                                                        <h2>
                                                                            <asp:Label ID="lblSchool" runat="server" Text="School Landscape"></asp:Label></h2>
                                                                    </td>
                                                                    <td style="width: 150px; text-align: center;">
                                                                        <asp:ImageButton ID="rightbtn" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/img/btn_r.png" Width="100px" Height="80px" OnClick="rightbtn_Click" />
                                                                    </td>
                                                                </tr>
                                                                <tr style="border: dashed;">
                                                                    <td colspan="3" style="margin: 0px auto; text-align: center;">
                                                                        <asp:ImageButton ID="imgbtn1" runat="server" ImageUrl="~/img/foonyewIMG/small/p1001.jpg" OnClick="imgbtn1_Click" />
                                                                        <asp:ImageButton ID="imgbtn2" runat="server" ImageUrl="~/img/foonyewIMG/small/p1002.jpg" OnClick="imgbtn2_Click" />
                                                                        <asp:ImageButton ID="imgbtn3" runat="server" ImageUrl="~/img/foonyewIMG/small/p1003.jpg" OnClick="imgbtn3_Click" />
                                                                        <asp:ImageButton ID="imgbtn4" runat="server" ImageUrl="~/img/foonyewIMG/small/p1004.jpg" OnClick="imgbtn4_Click" />
                                                                        <asp:ImageButton ID="imgbtn5" runat="server" ImageUrl="~/img/foonyewIMG/small/p1005.jpg" OnClick="imgbtn5_Click" />
                                                                        <asp:ImageButton ID="imgbtn6" runat="server" ImageUrl="~/img/foonyewIMG/small/p1006.jpg" OnClick="imgbtn6_Click" />
                                                                        <asp:ImageButton ID="imgbtn7" runat="server" ImageUrl="~/img/foonyewIMG/small/p1007.jpg" OnClick="imgbtn7_Click" />
                                                                        <asp:ImageButton ID="imgbtn8" runat="server" ImageUrl="~/img/foonyewIMG/small/p1008.jpg" OnClick="imgbtn8_Click" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:WizardStep>

                                        <asp:WizardStep ID="FYWizard" runat="server" Title="INTI International University">
                                            <table class="tableDetail">
                                                <tr>
                                                    <td class="title">INTI Intenational Univeristy</td>
                                                </tr>
                                                <tr>
                                                    <td class="level">Bachelor of Information Technology</td>
                                                </tr>
                                                <tr>
                                                    <td class="date">August 2018 until Now<br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="intro">
                                                        <br />
                                                        <strong>Introduction:</strong><br />
                                                        International University & Colleges are private university colleges located in Malaysia. The main campus was initially known as INTI University College until 31 May 2010 when the Higher Education Ministry announced its upgrade to university status. It is owned by INTI Education Group which has formalised its partnership with Laureate International Universities in 2008.</td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Website:&nbsp;&nbsp;</strong><asp:HyperLink ID="hyperInti" runat="server" ForeColor="LightSkyBlue" NavigateUrl="https://newinti.edu.my/" Target="_blank">newinti.edu.my</asp:HyperLink><br />
                                                        <strong>Campus Scenery:</strong><br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <div class="divImg" runat="server">
                                                                <asp:ImageButton ID="ImageView2" runat="server" ImageUrl="~/img/IntiIMG/img1.jpg" OnClick="ImageView2_Click" />
                                                            </div>
                                                            <table class="imgTabel" runat="server">
                                                                <tr>
                                                                    <td style="width: 150px; text-align: center; height: 150px;">
                                                                        <asp:ImageButton ID="leftbtn2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/img/button_l.png" Width="100px" OnClick="leftbtn2_Click" />
                                                                    </td>
                                                                    <td style="width: 200px; text-align: center;">
                                                                        <h2>
                                                                            <asp:Label ID="lblSchool2" runat="server" Text="Lobby"></asp:Label></h2>
                                                                    </td>
                                                                    <td style="width: 150px; text-align: center;">
                                                                        <asp:ImageButton ID="rightbtn2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/img/button_r.png" Width="100px" OnClick="rightbtn2_Click" />
                                                                    </td>
                                                                </tr>
                                                                <tr style="border: dashed;">
                                                                    <td colspan="3" style="margin: 0px auto; text-align: center;">
                                                                        <asp:ImageButton ID="imgbtn11" runat="server" ImageUrl="~/img/IntiIMG/small/img1.jpg" OnClick="imgbtn11_Click" />
                                                                        <asp:ImageButton ID="imgbtn22" runat="server" ImageUrl="~/img/IntiIMG/small/img2.jpg" OnClick="imgbtn22_Click" />
                                                                        <asp:ImageButton ID="imgbtn33" runat="server" ImageUrl="~/img/IntiIMG/small/img3.jpg" OnClick="imgbtn33_Click" />
                                                                        <asp:ImageButton ID="imgbtn44" runat="server" ImageUrl="~/img/IntiIMG/small/img4.jpg" OnClick="imgbtn44_Click" />
                                                                        <asp:ImageButton ID="imgbtn55" runat="server" ImageUrl="~/img/IntiIMG/small/img5.jpg" OnClick="imgbtn55_Click" />
                                                                        <asp:ImageButton ID="imgbtn66" runat="server" ImageUrl="~/img/IntiIMG/small/img6.jpg" OnClick="imgbtn66_Click" />
                                                                        <asp:ImageButton ID="imgbtn77" runat="server" ImageUrl="~/img/IntiIMG/small/img7.jpg" OnClick="imgbtn77_Click" />
                                                                    </td>
                                                                </tr>

                                                            </table>

                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:WizardStep>
                                    </WizardSteps>
                                </asp:Wizard>
                                    </div>
                                <br />
                                <br />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    <!-- End Portfolio Section -->
</asp:Content>

