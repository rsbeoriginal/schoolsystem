<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="TestSchedule.aspx.cs" Inherits="School.admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form">
				  	<h3>Test Schedule</h3>
                      <div><span>
                          <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Both" DefaultMode="Insert" Width="100%">
                              <EditItemTemplate>
                                  id:
                                  <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                  <br />
                                  date:
                                  <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                  <br />
                                  V:
                                  <asp:TextBox ID="VTextBox" runat="server" Text='<%# Bind("V") %>' />
                                  <br />
                                  VI:
                                  <asp:TextBox ID="VITextBox" runat="server" Text='<%# Bind("VI") %>' />
                                  <br />
                                  VII:
                                  <asp:TextBox ID="VIITextBox" runat="server" Text='<%# Bind("VII") %>' />
                                  <br />
                                  VIII:
                                  <asp:TextBox ID="VIIITextBox" runat="server" Text='<%# Bind("VIII") %>' />
                                  <br />
                                  IX:
                                  <asp:TextBox ID="IXTextBox" runat="server" Text='<%# Bind("IX") %>' />
                                  <br />
                                  X:
                                  <asp:TextBox ID="XTextBox" runat="server" Text='<%# Bind("X") %>' />
                                  <br />
                                  <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                  &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                              </EditItemTemplate>
                              <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                              <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                              <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                              <InsertItemTemplate>
                                  id:
                                  <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                                  <br />
                                  date:
                                  <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                  <br />
                                  V:
                                  <asp:TextBox ID="VTextBox" runat="server" Text='<%# Bind("V") %>' />
                                  <br />
                                  VI:
                                  <asp:TextBox ID="VITextBox" runat="server" Text='<%# Bind("VI") %>' />
                                  <br />
                                  VII:
                                  <asp:TextBox ID="VIITextBox" runat="server" Text='<%# Bind("VII") %>' />
                                  <br />
                                  VIII:
                                  <asp:TextBox ID="VIIITextBox" runat="server" Text='<%# Bind("VIII") %>' />
                                  <br />
                                  IX:
                                  <asp:TextBox ID="IXTextBox" runat="server" Text='<%# Bind("IX") %>' />
                                  <br />
                                  X:
                                  <asp:TextBox ID="XTextBox" runat="server" Text='<%# Bind("X") %>' />
                                  <br />
                                  <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                  &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                              </InsertItemTemplate>
                              <ItemTemplate>
                                  id:
                                  <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                  <br />
                                  date:
                                  <asp:Label ID="dateLabel" runat="server" Text='<%# Bind("date") %>' />
                                  <br />
                                  V:
                                  <asp:Label ID="VLabel" runat="server" Text='<%# Bind("V") %>' />
                                  <br />
                                  VI:
                                  <asp:Label ID="VILabel" runat="server" Text='<%# Bind("VI") %>' />
                                  <br />
                                  VII:
                                  <asp:Label ID="VIILabel" runat="server" Text='<%# Bind("VII") %>' />
                                  <br />
                                  VIII:
                                  <asp:Label ID="VIIILabel" runat="server" Text='<%# Bind("VIII") %>' />
                                  <br />
                                  IX:
                                  <asp:Label ID="IXLabel" runat="server" Text='<%# Bind("IX") %>' />
                                  <br />
                                  X:
                                  <asp:Label ID="XLabel" runat="server" Text='<%# Bind("X") %>' />
                                  <br />
                                  <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                  &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                  &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                              </ItemTemplate>
                              <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                              <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                          </asp:FormView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MondayTestSchedule] WHERE [id] = @original_id AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([V] = @original_V) OR ([V] IS NULL AND @original_V IS NULL)) AND (([VI] = @original_VI) OR ([VI] IS NULL AND @original_VI IS NULL)) AND (([VII] = @original_VII) OR ([VII] IS NULL AND @original_VII IS NULL)) AND (([VIII] = @original_VIII) OR ([VIII] IS NULL AND @original_VIII IS NULL)) AND (([IX] = @original_IX) OR ([IX] IS NULL AND @original_IX IS NULL)) AND (([X] = @original_X) OR ([X] IS NULL AND @original_X IS NULL))" InsertCommand="INSERT INTO [MondayTestSchedule] ([id], [date], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (@id, @date, @V, @VI, @VII, @VIII, @IX, @X)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MondayTestSchedule] ORDER BY [id] DESC" UpdateCommand="UPDATE [MondayTestSchedule] SET [date] = @date, [V] = @V, [VI] = @VI, [VII] = @VII, [VIII] = @VIII, [IX] = @IX, [X] = @X WHERE [id] = @original_id AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([V] = @original_V) OR ([V] IS NULL AND @original_V IS NULL)) AND (([VI] = @original_VI) OR ([VI] IS NULL AND @original_VI IS NULL)) AND (([VII] = @original_VII) OR ([VII] IS NULL AND @original_VII IS NULL)) AND (([VIII] = @original_VIII) OR ([VIII] IS NULL AND @original_VIII IS NULL)) AND (([IX] = @original_IX) OR ([IX] IS NULL AND @original_IX IS NULL)) AND (([X] = @original_X) OR ([X] IS NULL AND @original_X IS NULL))">
                              <DeleteParameters>
                                  <asp:Parameter Name="original_id" Type="Int32" />
                                  <asp:Parameter Name="original_date" Type="String" />
                                  <asp:Parameter Name="original_V" Type="String" />
                                  <asp:Parameter Name="original_VI" Type="String" />
                                  <asp:Parameter Name="original_VII" Type="String" />
                                  <asp:Parameter Name="original_VIII" Type="String" />
                                  <asp:Parameter Name="original_IX" Type="String" />
                                  <asp:Parameter Name="original_X" Type="String" />
                              </DeleteParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="id" Type="Int32" />
                                  <asp:Parameter Name="date" Type="String" />
                                  <asp:Parameter Name="V" Type="String" />
                                  <asp:Parameter Name="VI" Type="String" />
                                  <asp:Parameter Name="VII" Type="String" />
                                  <asp:Parameter Name="VIII" Type="String" />
                                  <asp:Parameter Name="IX" Type="String" />
                                  <asp:Parameter Name="X" Type="String" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="date" Type="String" />
                                  <asp:Parameter Name="V" Type="String" />
                                  <asp:Parameter Name="VI" Type="String" />
                                  <asp:Parameter Name="VII" Type="String" />
                                  <asp:Parameter Name="VIII" Type="String" />
                                  <asp:Parameter Name="IX" Type="String" />
                                  <asp:Parameter Name="X" Type="String" />
                                  <asp:Parameter Name="original_id" Type="Int32" />
                                  <asp:Parameter Name="original_date" Type="String" />
                                  <asp:Parameter Name="original_V" Type="String" />
                                  <asp:Parameter Name="original_VI" Type="String" />
                                  <asp:Parameter Name="original_VII" Type="String" />
                                  <asp:Parameter Name="original_VIII" Type="String" />
                                  <asp:Parameter Name="original_IX" Type="String" />
                                  <asp:Parameter Name="original_X" Type="String" />
                              </UpdateParameters>
                          </asp:SqlDataSource>
                          </span></div>                      
				  </div>
  				</div>                                     				
				 <div class="clear"></div> 
                    <div>
                        <span></span>
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                                <ItemStyle BorderStyle="Solid" BorderWidth="3px" />
                                </asp:CommandField>
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MondayTestSchedule] WHERE [id] = @original_id AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([V] = @original_V) OR ([V] IS NULL AND @original_V IS NULL)) AND (([VI] = @original_VI) OR ([VI] IS NULL AND @original_VI IS NULL)) AND (([VII] = @original_VII) OR ([VII] IS NULL AND @original_VII IS NULL)) AND (([VIII] = @original_VIII) OR ([VIII] IS NULL AND @original_VIII IS NULL)) AND (([IX] = @original_IX) OR ([IX] IS NULL AND @original_IX IS NULL)) AND (([X] = @original_X) OR ([X] IS NULL AND @original_X IS NULL))" InsertCommand="INSERT INTO [MondayTestSchedule] ([id], [date], [V], [VI], [VII], [VIII], [IX], [X]) VALUES (@id, @date, @V, @VI, @VII, @VIII, @IX, @X)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MondayTestSchedule] ORDER BY [id]" UpdateCommand="UPDATE [MondayTestSchedule] SET [date] = @date, [V] = @V, [VI] = @VI, [VII] = @VII, [VIII] = @VIII, [IX] = @IX, [X] = @X WHERE [id] = @original_id AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([V] = @original_V) OR ([V] IS NULL AND @original_V IS NULL)) AND (([VI] = @original_VI) OR ([VI] IS NULL AND @original_VI IS NULL)) AND (([VII] = @original_VII) OR ([VII] IS NULL AND @original_VII IS NULL)) AND (([VIII] = @original_VIII) OR ([VIII] IS NULL AND @original_VIII IS NULL)) AND (([IX] = @original_IX) OR ([IX] IS NULL AND @original_IX IS NULL)) AND (([X] = @original_X) OR ([X] IS NULL AND @original_X IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_date" Type="String" />
                                <asp:Parameter Name="original_V" Type="String" />
                                <asp:Parameter Name="original_VI" Type="String" />
                                <asp:Parameter Name="original_VII" Type="String" />
                                <asp:Parameter Name="original_VIII" Type="String" />
                                <asp:Parameter Name="original_IX" Type="String" />
                                <asp:Parameter Name="original_X" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                                <asp:Parameter Name="date" Type="String" />
                                <asp:Parameter Name="V" Type="String" />
                                <asp:Parameter Name="VI" Type="String" />
                                <asp:Parameter Name="VII" Type="String" />
                                <asp:Parameter Name="VIII" Type="String" />
                                <asp:Parameter Name="IX" Type="String" />
                                <asp:Parameter Name="X" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="date" Type="String" />
                                <asp:Parameter Name="V" Type="String" />
                                <asp:Parameter Name="VI" Type="String" />
                                <asp:Parameter Name="VII" Type="String" />
                                <asp:Parameter Name="VIII" Type="String" />
                                <asp:Parameter Name="IX" Type="String" />
                                <asp:Parameter Name="X" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_date" Type="String" />
                                <asp:Parameter Name="original_V" Type="String" />
                                <asp:Parameter Name="original_VI" Type="String" />
                                <asp:Parameter Name="original_VII" Type="String" />
                                <asp:Parameter Name="original_VIII" Type="String" />
                                <asp:Parameter Name="original_IX" Type="String" />
                                <asp:Parameter Name="original_X" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="clear"></div>
			  </div>			  
			</div>
</asp:Content>
