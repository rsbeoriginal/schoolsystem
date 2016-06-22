<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="TC.aspx.cs" Inherits="School.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>Transfer Certificate</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form">
				  	<h3>View Transfer Certificate</h3>
                      <span>
                      
                      <asp:Label ID="l_status" runat="server" ForeColor="Red" Text="**Enter the credentials to view your Transfer Certificate"></asp:Label>
                      
                      </span>
                      <div class="clear"></div>	
                      <div><span>
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session"></asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [session] FROM [TC]"></asp:SqlDataSource>
                          </span></div>				    
                      <div><span><label>Enter the your TC serial number</label></span></div>
                      <div><span>
                          <asp:TextBox ID="txt_tc_no" runat="server"></asp:TextBox>
                          </span></div>
                      <div><span><label>Enter your Admission number</label></span></div>
                      <div><span>
                          <asp:TextBox ID="txt_admn_no" runat="server"></asp:TextBox>
                          </span></div>
                      <div><span>
                          <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                          </span></div>
				  </div>
  				</div>				
				 <div class="clear"></div>
                    <asp:Image ID="img_tc" runat="server"  />
			  </div>			  
			</div>
</asp:Content>
