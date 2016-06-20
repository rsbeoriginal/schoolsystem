<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="houseresults_publish.aspx.cs" Inherits="School.admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div class="section group">
            <div class="col_1_of_3 span_2_of_3">
                <div class="contact-form">
                    <h3>Publish House Results</h3>					    
                    <div>
                        <span>
                            <asp:Label ID="l_house_result_id" runat="server" Text=""></asp:Label>
                        </span>
                    </div>
                    <div>
                        <span>
                            <asp:Label ID="l_status" runat="server" ForeColor="Red"></asp:Label>
                        </span>
                    </div>
					    	<div>
						    	<span><label>Competition ID</label></span>
						    	<span><asp:TextBox ID="txt_cmp_id" runat="server"></asp:TextBox></span>
						    </div>
						    <div>
						    	<span>
                                <label>Competition Name</label></span>
						    	<span><asp:TextBox ID="txt_cmp_name" runat="server"></asp:TextBox></span>
						    </div>
                            <div>
						    	<span>
                                <label style="font-size: large; font-family: 'Arial Rounded MT Bold'; color: #800000">First Position</label></span>
						    	<span><label>House Name</label><asp:TextBox ID="txt_house_first" runat="server"></asp:TextBox></span>
                                <span><label>Student Name</label><asp:TextBox ID="txt_student_first" runat="server"></asp:TextBox></span>
						    </div>
                            <div>
						    	<span>
                                <label style="font-size: large; font-family: 'Arial Rounded MT Bold'; color: #800000">Second Position</label></span>
						    	<span><label>House Name</label><asp:TextBox ID="txt_house_second" runat="server"></asp:TextBox></span>
                                <span><label>Student Name</label><asp:TextBox ID="txt_student_second" runat="server"></asp:TextBox></span>
						    </div>
                            <div>
						    	<span>
                                <label style="font-size: large; font-family: 'Arial Rounded MT Bold'; color: #800000">Third Position</label></span>
						    	<span><label>House Name</label><asp:TextBox ID="txt_house_third" runat="server"></asp:TextBox></span>
                                <span><label>Student Name</label><asp:TextBox ID="txt_student_third" runat="server"></asp:TextBox></span>
						    </div>
						   <div>
						   		<span><asp:Button ID="bt_submit" runat="server" Text="Submit" OnClick="bt_submit_Click" /></span>
						  </div>
					                
                </div>
            </div>
            <div class="col_1_of_3 span_1_of_3">
                <span><a href="news_publish.aspx">Publish News</a></span>
                <span><a href="news_list.aspx">List all news</a></span>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
