<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="houseresults_list.aspx.cs" Inherits="School.admin.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div class="section group">
            <div class="col_1_of_3 span_2_of_3">
                <div class="contact-form">
                    <h3>House Results List</h3>					    
                    <div><span>
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:CommandField>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CompetitionId" HeaderText="CompetitionId" SortExpression="CompetitionId">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CompetitionName" HeaderText="CompetitionName" SortExpression="CompetitionName">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FirstHouse" HeaderText="FirstHouse" SortExpression="FirstHouse">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FirstStudent" HeaderText="FirstStudent" SortExpression="FirstStudent">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SecondHouse" HeaderText="SecondHouse" SortExpression="SecondHouse">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="SecondStudent" HeaderText="SecondStudent" SortExpression="SecondStudent">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ThirdHouse" HeaderText="ThirdHouse" SortExpression="ThirdHouse">
                                <ItemStyle BorderStyle="Solid" BorderWidth="5px" HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ThirdStudent" HeaderText="ThirdStudent" SortExpression="ThirdStudent">
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HouseCompetitionResults] WHERE [id] = @original_id AND (([CompetitionName] = @original_CompetitionName) OR ([CompetitionName] IS NULL AND @original_CompetitionName IS NULL)) AND (([FirstHouse] = @original_FirstHouse) OR ([FirstHouse] IS NULL AND @original_FirstHouse IS NULL)) AND (([FirstStudent] = @original_FirstStudent) OR ([FirstStudent] IS NULL AND @original_FirstStudent IS NULL)) AND (([SecondHouse] = @original_SecondHouse) OR ([SecondHouse] IS NULL AND @original_SecondHouse IS NULL)) AND (([SecondStudent] = @original_SecondStudent) OR ([SecondStudent] IS NULL AND @original_SecondStudent IS NULL)) AND (([ThirdHouse] = @original_ThirdHouse) OR ([ThirdHouse] IS NULL AND @original_ThirdHouse IS NULL)) AND (([ThirdStudent] = @original_ThirdStudent) OR ([ThirdStudent] IS NULL AND @original_ThirdStudent IS NULL)) AND (([CompetitionId] = @original_CompetitionId) OR ([CompetitionId] IS NULL AND @original_CompetitionId IS NULL))" InsertCommand="INSERT INTO [HouseCompetitionResults] ([id], [CompetitionName], [FirstHouse], [FirstStudent], [SecondHouse], [SecondStudent], [ThirdHouse], [ThirdStudent], [CompetitionId]) VALUES (@id, @CompetitionName, @FirstHouse, @FirstStudent, @SecondHouse, @SecondStudent, @ThirdHouse, @ThirdStudent, @CompetitionId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [HouseCompetitionResults] ORDER BY [id]" UpdateCommand="UPDATE [HouseCompetitionResults] SET [CompetitionName] = @CompetitionName, [FirstHouse] = @FirstHouse, [FirstStudent] = @FirstStudent, [SecondHouse] = @SecondHouse, [SecondStudent] = @SecondStudent, [ThirdHouse] = @ThirdHouse, [ThirdStudent] = @ThirdStudent, [CompetitionId] = @CompetitionId WHERE [id] = @original_id AND (([CompetitionName] = @original_CompetitionName) OR ([CompetitionName] IS NULL AND @original_CompetitionName IS NULL)) AND (([FirstHouse] = @original_FirstHouse) OR ([FirstHouse] IS NULL AND @original_FirstHouse IS NULL)) AND (([FirstStudent] = @original_FirstStudent) OR ([FirstStudent] IS NULL AND @original_FirstStudent IS NULL)) AND (([SecondHouse] = @original_SecondHouse) OR ([SecondHouse] IS NULL AND @original_SecondHouse IS NULL)) AND (([SecondStudent] = @original_SecondStudent) OR ([SecondStudent] IS NULL AND @original_SecondStudent IS NULL)) AND (([ThirdHouse] = @original_ThirdHouse) OR ([ThirdHouse] IS NULL AND @original_ThirdHouse IS NULL)) AND (([ThirdStudent] = @original_ThirdStudent) OR ([ThirdStudent] IS NULL AND @original_ThirdStudent IS NULL)) AND (([CompetitionId] = @original_CompetitionId) OR ([CompetitionId] IS NULL AND @original_CompetitionId IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_CompetitionName" Type="String" />
                                <asp:Parameter Name="original_FirstHouse" Type="String" />
                                <asp:Parameter Name="original_FirstStudent" Type="String" />
                                <asp:Parameter Name="original_SecondHouse" Type="String" />
                                <asp:Parameter Name="original_SecondStudent" Type="String" />
                                <asp:Parameter Name="original_ThirdHouse" Type="String" />
                                <asp:Parameter Name="original_ThirdStudent" Type="String" />
                                <asp:Parameter Name="original_CompetitionId" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                                <asp:Parameter Name="CompetitionName" Type="String" />
                                <asp:Parameter Name="FirstHouse" Type="String" />
                                <asp:Parameter Name="FirstStudent" Type="String" />
                                <asp:Parameter Name="SecondHouse" Type="String" />
                                <asp:Parameter Name="SecondStudent" Type="String" />
                                <asp:Parameter Name="ThirdHouse" Type="String" />
                                <asp:Parameter Name="ThirdStudent" Type="String" />
                                <asp:Parameter Name="CompetitionId" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CompetitionName" Type="String" />
                                <asp:Parameter Name="FirstHouse" Type="String" />
                                <asp:Parameter Name="FirstStudent" Type="String" />
                                <asp:Parameter Name="SecondHouse" Type="String" />
                                <asp:Parameter Name="SecondStudent" Type="String" />
                                <asp:Parameter Name="ThirdHouse" Type="String" />
                                <asp:Parameter Name="ThirdStudent" Type="String" />
                                <asp:Parameter Name="CompetitionId" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_CompetitionName" Type="String" />
                                <asp:Parameter Name="original_FirstHouse" Type="String" />
                                <asp:Parameter Name="original_FirstStudent" Type="String" />
                                <asp:Parameter Name="original_SecondHouse" Type="String" />
                                <asp:Parameter Name="original_SecondStudent" Type="String" />
                                <asp:Parameter Name="original_ThirdHouse" Type="String" />
                                <asp:Parameter Name="original_ThirdStudent" Type="String" />
                                <asp:Parameter Name="original_CompetitionId" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        </span></div>
					                
                </div>
            </div>
            <div class="col_1_of_3 span_1_of_3">
                <div><span><a href="../admin/houseresults_publish.aspx">Publish House Results</a></span></div>
                <div><span><a href="../admin/houseresults_list.aspx">List all House Results</a></span></div>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
