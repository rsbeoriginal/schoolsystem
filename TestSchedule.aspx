<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="TestSchedule.aspx.cs" Inherits="School.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form">
				  	<h3>Test Schedule</h3>
                      <div><span style="font-size:larger;">
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
                              <Columns>
                                  <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="V" HeaderText="V" SortExpression="V">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="VI" HeaderText="VI" SortExpression="VI">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="VII" HeaderText="VII" SortExpression="VII">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="VIII" HeaderText="VIII" SortExpression="VIII">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="IX" HeaderText="IX" SortExpression="IX">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="X" HeaderText="X" SortExpression="X">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                  </asp:BoundField>
                              </Columns>
                              <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                              <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                              <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                              <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#FFF1D4" />
                              <SortedAscendingHeaderStyle BackColor="#B95C30" />
                              <SortedDescendingCellStyle BackColor="#F1E5CE" />
                              <SortedDescendingHeaderStyle BackColor="#93451F" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MondayTestSchedule] ORDER BY [id]"></asp:SqlDataSource>
                          </span></div>
				  </div>
  				</div>                    				
				 <div class="clear"></div> 
			  </div>			  
			</div>
</asp:Content>
