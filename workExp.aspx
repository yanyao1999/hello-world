<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="workExp.aspx.cs" Inherits="workExp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3-padding-large" id="main">
     <div class="w3-padding-64 w3-content" id="work">
                <h2 class="w3-text-light-grey">Work Experience</h2>
                <hr style="width: 200px" class="w3-opacity"/>


                <div style="margin: 0px auto; width: 800px;">

                    <div id="divSD" runat="server">
                        <h4><strong>Software Developer</strong></h4>
                        <asp:HyperLink ID="hcoca" ForeColor="LightSkyBlue"  href="https://www.coca-cola.com.my/" runat="server" Target="_blank">Coca Cola Pte Ltd</asp:HyperLink>
                        <br />
                        <strong>January 2008 - Janaury 2017</strong>

                        <ul>
                            <li>Consulted with engineering team members to determine system loads and develop improvement plans.</li>
                            <li>Built, tested and deployed scalable, highly available and modular software products.</li>
                            <li>Designed, implemented and monitored web pages and sites for continuous improvement.</li>
                            <li>Collaborated on all stages of systems development lifecycle, from requirements gathering to production releases.</li>
                            <li>Created, delivered and maintained scalable system architecture to support high-availability Internet site with various internal applications.</li>
                        </ul>
                    </div>

                    <div id="divRA" runat="server">
                        <h4><strong>Retail Assistant</strong></h4>
                        <asp:HyperLink ID="hswisse" ForeColor="LightSkyBlue"  href="https://www.swisse.com.sg/our-story/contact-us/" runat="server" Target="_blank">Swiss Wallness Pte Ltd</asp:HyperLink>
                        <br />
                        <strong>January 2018 - August 2018</strong>

                        <ul>
                            <li>Answered product questions with up-to-date knowledge of sales and store promotions.</li>
                            <li>Approached each problem with fresh mind and analytical strategies to quickly resolve concerns.</li>
                            <li>Pursued resolutions to achieve complete satisfaction, including tracking down hard-to-find merchandise at diverse locations.</li>
                            <li>Offered each customer top-notch, personal service and polite support to boost sales and customer satisfaction.</li>
                            <li>Coordinated efficient restocking of sales floor with current merchandise and accurate signage for current promotions.</li>
                        </ul>
                    </div>
                </div>
            </div>
         </div>
</asp:Content>

