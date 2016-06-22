<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="TC_publish.aspx.cs" Inherits="School.admin.WebForm5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form">
				  	<h3>View Transfer Certificate</h3>
                      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                      <span>                      
                      <asp:Label ID="l_status" runat="server" ForeColor="Red" ></asp:Label>                      
                      </span>
                      <span>
                          <asp:Label ID="l_tc_id" runat="server" Text=""></asp:Label></span>
                      <div class="clear"></div>
                      <div><span><label>Select Session</label></span></div>
                      <div><span>
                          <asp:CheckBox ID="chk_session" runat="server" Text="Create Session" /></span></div>					    
                      <div><span>
                          <asp:DropDownList ID="drop_session" runat="server" DataSourceID="SqlDataSource1" DataTextField="session" DataValueField="session"></asp:DropDownList> 
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [session] FROM [TC]"></asp:SqlDataSource>
&nbsp;<asp:TextBox ID="txt_session" runat="server"></asp:TextBox></span></div>
                      <div><span><label>Enter TC serial number</label></span></div>
                      <div><span>
                          <asp:TextBox ID="txt_tc_no" runat="server"></asp:TextBox>
                          </span></div>
                      <div><span><label>Enter Admission number</label></span></div>
                      <div><span>
                          <asp:TextBox ID="txt_admn_no" runat="server"></asp:TextBox>
                          </span></div>
                      <div><span>
                          <asp:AjaxFileUpload ID="file_upload" runat="server" OnUploadComplete="upload_complete"/>
                      <div><span>
                          <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                          </span></div>
				  </div>
  				</div>				
				 <div class="clear"></div> 
			  </div>			  
			</div>
</asp:Content>
