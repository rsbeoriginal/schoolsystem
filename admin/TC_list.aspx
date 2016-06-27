<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="TC_list.aspx.cs" Inherits="School.admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form">
				  	<h3>School Rules</h3>
                      <div>
                          <span>
                          <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                              <AlternatingRowStyle BackColor="White" />
                              <Columns>
                                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="5px" />
                                  </asp:CommandField>
                                  <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="tc_no" HeaderText="TC Number" SortExpression="tc_no">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="admn_no" HeaderText="Admission Number" SortExpression="admn_no">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                  </asp:BoundField>
                                  <asp:BoundField DataField="session" HeaderText="Session" SortExpression="session">
                                  <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                  </asp:BoundField>
                              </Columns>
                              <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                              <SortedAscendingCellStyle BackColor="#FDF5AC" />
                              <SortedAscendingHeaderStyle BackColor="#4D0000" />
                              <SortedDescendingCellStyle BackColor="#FCF6C0" />
                              <SortedDescendingHeaderStyle BackColor="#820000" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TC] WHERE [id] = @original_id AND (([tc_no] = @original_tc_no) OR ([tc_no] IS NULL AND @original_tc_no IS NULL)) AND (([admn_no] = @original_admn_no) OR ([admn_no] IS NULL AND @original_admn_no IS NULL)) AND (([session] = @original_session) OR ([session] IS NULL AND @original_session IS NULL))" InsertCommand="INSERT INTO [TC] ([id], [tc_no], [admn_no], [session]) VALUES (@id, @tc_no, @admn_no, @session)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TC] ORDER BY [id]" UpdateCommand="UPDATE [TC] SET [tc_no] = @tc_no, [admn_no] = @admn_no, [session] = @session WHERE [id] = @original_id AND (([tc_no] = @original_tc_no) OR ([tc_no] IS NULL AND @original_tc_no IS NULL)) AND (([admn_no] = @original_admn_no) OR ([admn_no] IS NULL AND @original_admn_no IS NULL)) AND (([session] = @original_session) OR ([session] IS NULL AND @original_session IS NULL))">
                              <DeleteParameters>
                                  <asp:Parameter Name="original_id" Type="Int32" />
                                  <asp:Parameter Name="original_tc_no" Type="Int32" />
                                  <asp:Parameter Name="original_admn_no" Type="Int32" />
                                  <asp:Parameter Name="original_session" Type="String" />
                              </DeleteParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="id" Type="Int32" />
                                  <asp:Parameter Name="tc_no" Type="Int32" />
                                  <asp:Parameter Name="admn_no" Type="Int32" />
                                  <asp:Parameter Name="session" Type="String" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="tc_no" Type="Int32" />
                                  <asp:Parameter Name="admn_no" Type="Int32" />
                                  <asp:Parameter Name="session" Type="String" />
                                  <asp:Parameter Name="original_id" Type="Int32" />
                                  <asp:Parameter Name="original_tc_no" Type="Int32" />
                                  <asp:Parameter Name="original_admn_no" Type="Int32" />
                                  <asp:Parameter Name="original_session" Type="String" />
                              </UpdateParameters>
                          </asp:SqlDataSource>
                          </span>
                      </div>
				  </div>
  				</div>
                    <div class="col_1_of_3 span_1_of_3">
                        <div class="contact-form" >
                            
                            <div><span><asp:Button ID="Button1" runat="server" Text="TC Publish" PostBackUrl="~/admin/TC_publish.aspx" /></span></div><br />
                            <div><span><asp:Button ID="Button2" runat="server" Text="TC List" PostBackUrl="~/admin/TC_list.aspx" /></span></div><br />
                            

                        </div>
                    </div>				
				 <div class="clear"></div> 
			  </div>			  
			</div>
</asp:Content>
