<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="School.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form">
				  	<h3>Department Downloads</h3>
					   <div><span>
                           <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
                               <AlternatingItemTemplate>
                                   <td runat="server" style="background-color: #FAFAD2;color: #284775;padding:10px;margin:10px;">
                                       <div class="heading3"><h3><%# Eval("department_name") %></h3></div>
                                       <asp:Label ID="department_nameLabel" runat="server" Text='<%# Eval("department_name") %>' Visible=false/>
                                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                           <Columns>
                                               <asp:BoundField DataField="description" HeaderText="Content of File" SortExpression="description">
                                               <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                               </asp:BoundField>
                                               <asp:HyperLinkField DataNavigateUrlFields="department_name,file_name" DataNavigateUrlFormatString="~/Department/{0}/{1}" Target="_blank" Text="Download">
                                               <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                               </asp:HyperLinkField>
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
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DepartmentFileList] WHERE ([department_name] = @department_name)">
                                           <SelectParameters>
                                               <asp:ControlParameter ControlID="department_nameLabel" Name="department_name" PropertyName="Text" Type="String" />
                                           </SelectParameters>
                                       </asp:SqlDataSource>
                                       <br /></td>
                               </AlternatingItemTemplate>
                               <EditItemTemplate>
                                   <td runat="server" style="background-color: #FFCC66;color: #000080;">department_name:
                                       <asp:TextBox ID="department_nameTextBox" runat="server" Text='<%# Bind("department_name") %>' />
                                       <br />
                                       <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                       <br />
                                       <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                       <br /></td>
                               </EditItemTemplate>
                               <EmptyDataTemplate>
                                   <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                       <tr>
                                           <td>No data was returned.</td>
                                       </tr>
                                   </table>
                               </EmptyDataTemplate>
                               <EmptyItemTemplate>
<td runat="server" />
                               </EmptyItemTemplate>
                               <GroupTemplate>
                                   <tr id="itemPlaceholderContainer" runat="server">
                                       <td id="itemPlaceholder" runat="server"></td>
                                   </tr>
                               </GroupTemplate>
                               <InsertItemTemplate>
                                   <td runat="server" style="">department_name:
                                       <asp:TextBox ID="department_nameTextBox" runat="server" Text='<%# Bind("department_name") %>' />
                                       <br />
                                       <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                       <br />
                                       <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                       <br /></td>
                               </InsertItemTemplate>
                               <ItemTemplate>
                                   <td runat="server" style="background-color: #FFFBD6;color: #333333; padding:10px;margin:10px;">
                                       <div class="heading3"><h3><%# Eval("department_name") %></h3></div>
                                       <asp:Label ID="department_nameLabel" runat="server" Text='<%# Eval("department_name") %>' Visible=false/>
                                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                           <Columns>
                                               <asp:BoundField DataField="description" HeaderText="Content of File" SortExpression="description">
                                               <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                               </asp:BoundField>
                                               <asp:HyperLinkField DataNavigateUrlFields="department_name,file_name" DataNavigateUrlFormatString="~/Department/{0}/{1}" Target="_blank" Text="Download">
                                               <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                               </asp:HyperLinkField>
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
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DepartmentFileList] WHERE ([department_name] = @department_name)">
                                           <SelectParameters>
                                               <asp:ControlParameter ControlID="department_nameLabel" Name="department_name" PropertyName="Text" Type="String" />
                                           </SelectParameters>
                                       </asp:SqlDataSource>
                                       <br /></td>
                               </ItemTemplate>
                               <LayoutTemplate>
                                   <table runat="server">
                                       <tr runat="server">
                                           <td runat="server">
                                               <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                   <tr id="groupPlaceholder" runat="server">
                                                   </tr>
                                               </table>
                                           </td>
                                       </tr>
                                       <tr runat="server">
                                           <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                                       </tr>
                                   </table>
                               </LayoutTemplate>
                               <SelectedItemTemplate>
                                   <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">department_name:
                                       <asp:Label ID="department_nameLabel" runat="server" Text='<%# Eval("department_name") %>' />
                                       <br /></td>
                               </SelectedItemTemplate>
                           </asp:ListView>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [department_name] FROM [DepartmentList]"></asp:SqlDataSource>
                       </span></div>
				  </div>
  				</div>				
				 <div class="clear"></div> 
			  </div>			  
			</div>
</asp:Content>
