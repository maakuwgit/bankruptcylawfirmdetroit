<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ProductCategory.aspx.vb" Inherits="ProductCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="js/stupidtable.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
<div class="c wrap">
    <div class="c">
        <div class="g12">
            <input type="button" class="submit" onclick="history.back()" value="Back" />
	        <br />
        </div>
   </div>
    <div class="c">
            <div class="g12">
                <div class="heading">
                    <div class="padboth">
                        <div class="breadcrumbs">
                            <h1 class="inline">Markets</h1><img src="images/spacer_arrow.png" /><h1 class="inline">Communications</h1>
                        </div>
                    </div>
                    <div class="padh">
                        
                    </div>
                </div>
            </div>
    </div>
   
    <div class="c borderb">
        <div class="g12">
            <div class="padboth">
                <img class="fl" src="images/sort-icon.png" /><p >Click on column headers to sort by specific columns.</p>
                <div id="Markets" runat="server"></div>
            </div>
        </div>
    </div>
    <div class="c padv borderb">
        <div class="g4">
            <div class="padboth">
                <h4 class="cservice-icon">Customer Service</h4>
                <p class="cslinks">
                    Call us at 1-310-606-0855<br />                    Fax us at 1-310-606-0865<br />                    Email us <a href="mailto:customerservice@integratech.com?Subject=Customer%20Service%20Inquiry">Click here</a><br />                    <a href="Contact.aspx">Contact Information</a>
                </p>
            </div>
        </div>
        <div class="g4">
            <div class="padboth">
                <h4 class="psupport-icon">Product Support</h4>
                <p class="cslinks">
                Call us at 1-310-606-0855 x 131<br />                <a href="products.aspx">Specs & Data Sheets</a><br />                <a href="productsearch.aspx">Product Search</a><br />                <a href="docs.aspx">Technical Papers</a>
                </p>
            </div>
        </div>
        <div class="g4">
            <div class="padboth">
                <h4 class="salesrep-icon">Sales Representatives</h4>
                <p class="cslinks">
                <a href="domesticsales.aspx">Domestic (USA)</a><br />                <a href="internationalsales.aspx">International</a><br />                <a href="globalsales.aspx">Global Sales Map</a><br />
                </p>
            </div>
        </div>
    </div>
</div>
</asp:Content>

