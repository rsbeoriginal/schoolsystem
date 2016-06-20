<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="HouseResults.aspx.cs" Inherits="School.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form">
				  	<h3>House Competition Results</h3>                      
                      <div>
                          <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" >                            
                             
                              <EmptyDataTemplate>
                                  <span>No data was returned.</span>
                              </EmptyDataTemplate>
                              
                              <ItemTemplate>
                                  <!--<span style="background-color: #FFFBD6;color: #333333;">-->
                                      <div>
                          <table class="auto-style1">
                              <tr>
                                  <td colspan="2"><span><label><%# Eval("CompetitionId") %></label></span></td>
                                  <td colspan="2"><span><label style="font-weight: bold; font-size: large; font-style: italic;"><%# Eval("CompetitionName") %></label></span></td>
                              </tr>
                              <tr>
                                  <td><span><label>1</label></span></td>
                                  <td colspan="2"><span><label><%# Eval("FirstStudent") %></label></span></td>
                                  <td><span><label><%# Eval("FirstHouse") %></label></span></td>
                              </tr>
                              <tr>
                                  <td><span>
                                      <label>
                                      2</label></span></td>
                                  <td colspan="2"><span>
                                      <label>
                                      <%# Eval("SecondStudent") %></label></span></td>
                                  <td><span>
                                      <label>
                                      <%# Eval("SecondHouse") %></label></span></td>
                              </tr>
                              <tr>
                                  <td><span>
                                      <label>
                                      3</label></span></td>
                                  <td colspan="2"><span>
                                      <label>
                                      <%# Eval("ThirdStudent") %></label></span></td>
                                  <td><span>
                                      <label>
                                      <%# Eval("ThirdHouse") %></label></span></td>
                              </tr>
                          </table>
                      </div>        
                                  <div class="clear"></div>                            
                                 
                                 
                              </ItemTemplate>
                              <LayoutTemplate>
                                  <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                      <span runat="server" id="itemPlaceholder" />
                                  </div>
                                  <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                                  </div>
                              </LayoutTemplate>
                              
                          </asp:ListView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HouseCompetitionResults] ORDER BY [id] DESC"></asp:SqlDataSource>

                      </div>					    
				  </div>
  				</div>				
				 <div class="clear"></div> 
			  </div>			  
			</div>
</asp:Content>
