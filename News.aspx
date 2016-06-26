<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="School.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>News|Delhi Public School,NTPC Farakka</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form">
				  	<h3><a href="#news">News/Updates</a></h3>
                      <div><span>
                          <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">                              
                              <EmptyDataTemplate>
                                  <span>No data was returned.</span>
                              </EmptyDataTemplate>                              
                              <ItemTemplate>
                                  <div><span style="border: 2px solid #008000;background-color: #DBDBDB;">
                                  <div><span style="background-color: #FFFBD6;color: #333333; font-size: large;border: 1px solid #008000;"><asp:Label  ID="titleLabel" runat="server" Text='<%# Eval("title") %>' Font-Bold="True" Font-Italic="True" /></span></div>                                  
                                  <div><span style="font-size:medium;"><asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' /></span></div>                                  
                                  </span></div>
                              </ItemTemplate>
                              <LayoutTemplate>
                                  <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                      <span runat="server" id="itemPlaceholder" />
                                  </div>
                                  <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                  </div>
                              </LayoutTemplate>                              
                          </asp:ListView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [News] WHERE ([status] &lt;&gt; @status) ORDER BY [id] DESC">
                              <SelectParameters>
                                  <asp:Parameter DefaultValue="HIDE" Name="status" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                          </span></div>                      
				  </div>
  				</div>                    
				 <div class="clear"></div> 
			  </div>			  
			</div>
</asp:Content>
