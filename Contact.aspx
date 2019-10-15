<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .tableContactTitle{
            vertical-align:top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="w3-padding-large" id="main">

        <div class="w3-padding-64 w3-content w3-text-white" id="contact">
            <h2 class="w3-text-light-grey">Contact Me</h2>
            <hr style="width: 200px" class="w3-opacity"/>


            <br/>
            <p>Lets get in touch. Send me a message:</p>

            <div style="padding: 0; margin: 0px auto; width: 900px;">
                <asp:MultiView ID="MultiViewForm" runat="server" ActiveViewIndex="0">
                    <asp:View ID="viewForm" runat="server">
                        <table>
                            <tr>
                                <td colspan="4">
                                    <asp:ValidationSummary ID="vs1" CssClass="valid" HeaderText="Please correct these entries:" runat="server" DisplayMode="BulletList" ValidationGroup="valid1" />
                                </td>
                            </tr>
                            <tr>
                                <td class="valid">*All field are required.</td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">First Name:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:TextBox ID="txtFname" runat="server" TextMode="SingleLine" Width="309px" Height="30px" placeholder="First Name"></asp:TextBox></td>
                                <td class="valid">
                                    <asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="txtFname" ErrorMessage="Please enter your first name." Display="Dynamic" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Last Name:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:TextBox ID="txtLname" runat="server" TextMode="SingleLine" Width="309px" Height="30px" placeholder="Last Name"></asp:TextBox>
                                </td>
                                <td class="valid">
                                    <asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="txtLname" ErrorMessage="Please enter your last name." Display="Dynamic" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Company Name:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:TextBox ID="txtCompany" runat="server" Width="309px" Height="30px" placeholder="Company Name"></asp:TextBox></td>
                                <td class="valid">
                                    <asp:RequiredFieldValidator ID="rfvCompany" runat="server" ControlToValidate="txtCompany" ErrorMessage="Please enter your company name." Display="Dynamic" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Email Address:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:TextBox ID="txtEmail1" runat="server" TextMode="Email" Width="309px" Height="30px" placeholder="Email Address"></asp:TextBox></td>
                                <td class="valid">
                                    <asp:RequiredFieldValidator ID="rfvEmail1" runat="server" ControlToValidate="txtEmail1" ErrorMessage="Please enter your email address." Display="Dynamic" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revEmail1" runat="server" ControlToValidate="txtEmail1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter correct email format." Display="Dynamic" ValidationGroup="valid1"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Email Re-entry:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:TextBox ID="txtEmail2" runat="server" TextMode="Email" Width="309px" Height="30px" placeholder="Email Address"></asp:TextBox></td>
                                <td class="valid">
                                    <asp:RequiredFieldValidator ID="rfvEmail2" runat="server" ControlToValidate="txtEmail2" ErrorMessage="Please enter your email address." Display="Dynamic" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cvEmail2" runat="server" ControlToValidate="txtEmail2" ControlToCompare="txtEmail1" Operator="Equal" ErrorMessage="Please enter same email address." Display="Dynamic" ValidationGroup="valid1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Job Title:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:TextBox ID="txtJob" runat="server" TextMode="SingleLine" Width="309px" Height="30px" placeholder="Job"></asp:TextBox></td>
                                <td class="valid">
                                    <asp:RequiredFieldValidator ID="rfvJob" runat="server" ControlToValidate="txtJob" ErrorMessage="Please enter your job title." Display="Dynamic" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Contact Number:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:TextBox ID="txtContact" runat="server" TextMode="Phone" Width="309px" Height="30px" placeholder="Phone Number"></asp:TextBox></td>
                                <td class="valid">
                                    <asp:RequiredFieldValidator ID="rfvContact" runat="server" ControlToValidate="txtContact" ErrorMessage="Please enter a valid phone number." Display="Dynamic" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revContact" runat="server" ControlToValidate="txtContact" ErrorMessage="Please enter correct format.(XXXXXXXXXX)" Display="Dynamic" ValidationExpression="^\d{10,15}$" ValidationGroup="valid1"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Country:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" DataSourceID="xmlcountry" DataTextField="name" DataValueField="name" Width="309px" Height="35px"></asp:DropDownList>
                                    <asp:XmlDataSource ID="xmlcountry" runat="server" DataFile="~/xml/country.xml"></asp:XmlDataSource>

                                </td>
                                <td class="valid">
                                    <asp:CompareValidator ID="cvCountry" runat="server" ControlToValidate="ddlCountry" ValueToCompare="-Select Country-" Operator="NotEqual" ErrorMessage="Please select your country." Display="Dynamic" ValidationGroup="valid1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">State/City (Only Malaysia):</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" DataSourceID="xmlState" DataTextField="name" DataValueField="name" Width="150px" Height="35px" Enabled="false"></asp:DropDownList>
                                    <asp:XmlDataSource ID="xmlState" runat="server" DataFile="~/xml/state.xml"></asp:XmlDataSource>
                                    <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="" DataValueField="name" DataTextField="name" Width="155px" Height="35px" Enabled="false"></asp:DropDownList>
                                    <asp:XmlDataSource ID="xmlCitySembilan" runat="server" DataFile="~/xml/xmlCity/citySembilan.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="xmlCityJohor" runat="server" DataFile="~/xml/xmlCity/cityJohor.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCityKedah" runat="server" DataFile="~/xml/xmlCity/cityKedah.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCityKelantan" runat="server" DataFile="~/xml/xmlCity/cityKelantan.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCityMelaka" runat="server" DataFile="~/xml/xmlCity/cityMelaka.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCityPahang" runat="server" DataFile="~/xml/xmlCity/cityPahang.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCityPenang" runat="server" DataFile="~/xml/xmlCity/cityPenang.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCityPerak" runat="server" DataFile="~/xml/xmlCity/cityPerak.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCitySabah" runat="server" DataFile="~/xml/xmlCity/citySabah.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCitySarawak" runat="server" DataFile="~/xml/xmlCity/citySarawah.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCityTerengganu" runat="server" DataFile="~/xml/xmlCity/cityTerengganu.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlCityPerlis" runat="server" DataFile="~/xml/xmlCity/cityPerlis.xml"></asp:XmlDataSource>
                                    <asp:XmlDataSource ID="XmlDataSource6" runat="server" DataFile="~/xml/xmlCity/cityJohor.xml"></asp:XmlDataSource>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Business Type:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:DropDownList ID="ddlBusiness" runat="server" DataSourceID="xmlBusiness" DataTextField="name" DataValueField="name" Width="309px" Height="35px"></asp:DropDownList>
                                    <asp:XmlDataSource ID="xmlBusiness" runat="server" DataFile="~/xml/business.xml"></asp:XmlDataSource>
                                </td>
                                <td class="valid">
                                    <asp:CompareValidator ID="cvBusiness" runat="server" ControlToValidate="ddlBusiness" ValueToCompare="Select Business Type" Operator="NotEqual" ErrorMessage="Please select your business type." Display="Dynamic" ValidationGroup="valid1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="tableContactTitle">Appointment Date:</td>
                                <td class="tablespace"></td>
                                <td class="box">
                                    <asp:TextBox ID="txtDate" runat="server" Width="155px" Height="35px" placeholder="dd/mm/yyyy" ></asp:TextBox>
                                    <asp:ImageButton ID="btnCalendar" runat="server" ImageUrl="~/img/calendar.jpg" OnClick="btnCalendar_Click" ImageAlign="Middle" />
                                    <asp:Calendar ID="cal" runat="server" Visible="False" OnSelectionChanged="cal_SelectionChanged1" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" ForeColor="Black" NextPrevFormat="FullMonth" TitleFormat="Month" Font-Size="10pt" Height="180px" Width="308px" >
                                     
                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                                        <DayStyle Width="14%" />
                                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                                        <TodayDayStyle BackColor="#CCCC99" />
                                     
                                    </asp:Calendar>
                                </td>
                                <td class="valid">
                                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Field Required." ValidationGroup="valid1"></asp:RequiredFieldValidator>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>
                                    <br />
                                    <asp:Button ID="btnSubmit" class="w3-button w3-white w3-padding-large w3-hover-gray" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="valid1" />
                                </td>
                            </tr>
                        </table>

                    </asp:View>
                    <asp:View ID="viewValid" runat="server">
                        <h3 style="text-decoration: underline">Your Information</h3>
                        <table>
                            <tr>
                                <td class="td1">Your Name:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">Company:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblCompany" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">Email:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">Job Title:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblJob" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">Contact Number:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblContact" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">Country:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblCountry" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">State:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblState" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">City:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblCity" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">Business Type:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblBusiness" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">Appointment Date:&nbsp;&nbsp;</td>
                                <td>
                                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <hr />
                        Are all of the information correct? &nbsp;
                <asp:Button ID="btnYes" class="w3-button w3-white w3-padding-large w3-hover-gray" runat="server" Text="Yes" CommandName="NextView" />
                        &nbsp;
                    <asp:Button ID="btnNo" class="w3-button w3-white w3-padding-large w3-hover-gray" runat="server" Text="No" CommandName="PrevView" />
                    </asp:View>
                    <asp:View ID="viewDone" runat="server">
                        <div style="text-align: center; margin: 0px auto;">
                            <br />
                            <img src="img/thankyou.gif" />
                            <p style="text-align: center; font-size: large;">
                                Submit Successfully.<br />
                                Thank You!
                                <br />
                                I will contact you in this few day.<br />
                                We are more thankful than we can express.<br />
                            </p>
                            <asp:Button class="w3-button w3-white w3-padding-large w3-hover-black" ID="btnHome" runat="server" Text="Go To Home" OnClick="btnHome_Click" />
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
            <div class="w3-section">
                <br />
                <br />
                <hr />
                <p>
                    Contact Us.<br /><br />
                    <i class="fa fa-map-marker fa-fw w3-text-white w3-xxlarge w3-margin-right"></i>
                    <strong>Address:</strong>
                    <a title="address">Skudai, Johor, Malaysia.</a>
                    <br />
                </p>
                <p>
                    <i class="fa fa-phone fa-fw w3-text-white w3-xxlarge w3-margin-right"></i>
                    <strong>Contact Number:</strong>&nbsp;
                        <a title="Phone">+60 167006978</a>
                </p>
                <p>
                    <i class="fa fa-envelope fa-fw w3-text-white w3-xxlarge w3-margin-right"></i>
                    <strong>Email Address:</strong>&nbsp;
                        <a title="Email">
                            <a href="mailto:#">yanyao9999@gmail.com</a>
                        </a>
                </p>
            </div>
        </div>
    </div>

</asp:Content>

