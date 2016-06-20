<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="news_publish.aspx.cs" Inherits="School.admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div class="section group">
            <div class="col_1_of_3 span_2_of_3">
                <div class="contact-form">
                    <h3>Publish News/Updates</h3>					    
                    <div>
                        <span>
                            <asp:Label ID="l_news_id" runat="server" Text=""></asp:Label>
                        </span>
                    </div>
                    <div>
                        <span>
                            <asp:Label ID="l_status" runat="server" ForeColor="Red"></asp:Label>
                        </span>
                    </div>
					    	<div>
						    	<span><label>Title of the News</label></span>
						    	<span><asp:TextBox ID="txt_title" runat="server"></asp:TextBox></span>
						    </div>
						    <div>
						    	<span>
                                <label>Content</label></span>
						    	<span><asp:TextBox ID="txt_content" runat="server"></asp:TextBox></span>
						    </div>
                    <div>
                        <span><label>Status</label></span>
                        <span>
                            <asp:DropDownList ID="drop_status" runat="server">
                                <asp:ListItem Selected="True">SHOW</asp:ListItem>
                                <asp:ListItem>URGENT</asp:ListItem>
                        </asp:DropDownList></span>
                    </div>				  
						   <div>
						   		<span><asp:Button ID="bt_submit" runat="server" Text="Submit" OnClick="bt_submit_Click" /></span>
						  </div>
					                
                </div>
            </div>
            <div class="col_1_of_3 span_1_of_3">
                <div><span><a href="news_publish.aspx">Publish News</a></span></div>
                <div><span><a href="news_list.aspx">List all news</a></span></div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
