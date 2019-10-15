<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="w3-padding-large" id="main">

        <div class="w3-content w3-justify w3-text-white w3-padding-64" id="feedback">
            <h2 class="w3-text-light-grey">Feedback</h2>
            <hr style="width: 200px" class="w3-opacity"/>
           
            <p>We would love to hear from you! Please take a moment to let us know about your experience. </p>
             <div style="padding: 0; margin: 0px auto; width: 900px;">
            <asp:MultiView ID="multiviewfb" runat="server" ActiveViewIndex="0">
                <asp:View ID="view1" runat="server">
                    <div>
                    Please provide your name.<br />
                    <asp:TextBox ID="txtName" runat="server" placeholder="Name" TextMode="SingleLine"></asp:TextBox>&nbsp;<asp:Button ID="btn1" runat="server" Text="Enter" ValidationGroup="valid1" OnClick="btn1_Click" /><br />
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="valid" ControlToValidate="txtName" ErrorMessage="Field Required." Display="Dynamic" ValidationGroup="valid1"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvName" runat="server" CssClass="valid" ControlToValidate="txtName" ErrorMessage="At least 8 character." Display="Dynamic" OnServerValidate="cvName_ServerValidate1" ValidationGroup="valid1"></asp:CustomValidator><br />
                    <asp:Label class="select" ID="lblName" runat="server" /><br /><br />

                    Please provide your age.<br />
                    <asp:TextBox ID="txtAge" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>&nbsp;<asp:Button ID="btn2" runat="server" Text="Enter" ValidationGroup="valid3" OnClick="btn2_Click" /><br />
                    <asp:RequiredFieldValidator ID="rfvAge" runat="server" CssClass="valid" ControlToValidate="txtAge" ErrorMessage="Field Required." Display="Dynamic" ValidationGroup="valid3"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvAge" runat="server" CssClass="valid" ControlToValidate="txtAge" ErrorMessage="Normally, Your age will be 1 until 100." Display="Dynamic" OnServerValidate="cvAge_ServerValidate" ValidationGroup="valid3"></asp:CustomValidator><br />
                    Your Age:&nbsp;&nbsp;<asp:Label class="select" ID="lblAge" runat="server" /><br /><br />
                    <hr /><br />

                    1. How would you rate your overall experience with our website?
                    <asp:RadioButtonList ID="rblexperience" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblexperience_SelectedIndexChanged">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvExp" runat="server" ControlToValidate="rblexperience" ErrorMessage="Field Required." ValidationGroup="valid2"></asp:RequiredFieldValidator><br />
                    Selected:&nbsp;&nbsp;<asp:Label class="select" ID="lbl1" runat="server" /><br /><br />

                    2. Is this the first time you have visited the website?
                    <asp:RadioButtonList ID="blFirst" runat="server" AutoPostBack="true" OnSelectedIndexChanged="blFirst_SelectedIndexChanged">
                        <asp:ListItem Text="YES"></asp:ListItem>
                        <asp:ListItem Text="NO"></asp:ListItem>
                    </asp:RadioButtonList>
                        <asp:RequiredFieldValidator CssClass="valid" ID="rfvFirst" runat="server" ControlToValidate="blFirst" ErrorMessage="Field Required." ValidationGroup="valid2"></asp:RequiredFieldValidator><br />
                    Selected:&nbsp;&nbsp;<asp:Label ID="lbl2" class="select" runat="server"></asp:Label><br /><br />
                    
                    3. Overall, how many marks will you give to our website?<br />
                    <asp:TextBox ID="txtRange" runat="server" TextMode="Range" AutoPostBack="true" Text="0" OnTextChanged="txtRange_TextChanged"></asp:TextBox>
                    <asp:TextBox ID="txt1Range" CssClass="txtrange" runat="server" TextMode="Number" Text="0" AutoPostBack="true" OnTextChanged="lblRange_TextChanged" Width="40px"></asp:TextBox>(0-100)<br />
                    <asp:RequiredFieldValidator CssClass="valid" ID="rfvRange" ControlToValidate="txt1Range" runat="server" ErrorMessage="Please enter a number." ValidationGroup="valid2" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator CssClass="valid" ID="rvRange" runat="server" ControlToValidate="txt1Range" Type="Integer" MaximumValue="100" MinimumValue="0" ErrorMessage="Please enter number 0 - 100." Display="Dynamic" ValidationGroup="valid2"></asp:RangeValidator><br />
                    Selected:&nbsp;&nbsp;<asp:Label ID="lbl3" class="select" runat="server"></asp:Label><br /><br />

                    4. Please add any comments you have for improving the website. We welcome suggestions for improvements.<br />
                    <asp:TextBox ID="txtCommend" runat="server" Width="600px" TextMode="SingleLine" placeholder="Commend"></asp:TextBox>
                    <br />
                    <br />

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="valid2" CommandName="NextView"/> 

                        </div>
                </asp:View>
                <asp:View ID="view2" runat="server">
                    <div style="text-align: center; margin: 0px auto;">
                        <br />
                        <img src="img/thankyou1.gif" />
                        <p style="text-align: center; font-size: large;">
                            Dear&nbsp; 
                            <asp:Label class="select" ID="lblName2" runat="server"></asp:Label>,<br />
                            Thank you very much for taking the time to write in to us.<br />
                            Once again, we apologize for the recent experience you had with us and we appreciate the feedback that was provided.<br />
                            We appreciate the suggestion that you have provided and may consider in our future plans.<br />
                            Thank you once again for the valuable suggestion.<br />
                            Thank You & Warm Regards,<br />
                        </p>
                        <asp:Button class="w3-button w3-white w3-padding-large w3-hover-black" ID="btnHome" runat="server" Text="Go To Home" OnClick="btnHome_Click" />
                    
                   
                    </div>

                </asp:View>
            </asp:MultiView>
                 </div>
            </div>
        
    </div>
</asp:Content>

