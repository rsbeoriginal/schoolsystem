<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="HouseCompetition.aspx.cs" Inherits="School.admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
			    <div class="section-top" style="overflow:hidden">
                    
            <div class="col_1_of_3 span_1_of_3 contact-form">
                <div><span>
                        <asp:Label ID="l_status" runat="server" Text="Please Fill-in All required Details" ForeColor="Red"></asp:Label></span></div>
                <div><span>
                    <asp:Label ID="l_cmp_id" runat="server" Text="Label"></asp:Label></span></div>
                
                <div><span><label>Competition ID</label></span>
                    <span>
                        <asp:TextBox ID="txt_cmp_id" runat="server"></asp:TextBox></span>
                </div>
                <div>
                    <span><label>Competition Name</label></span>
                    <span>
                        <asp:TextBox ID="txt_cmp_name" runat="server"></asp:TextBox></span>
                </div>
            </div>
            <div class="col_1_of_3 span_1_of_3 contact-form">
                <div><span><label>Date</label></span>
                    <span>
                        <asp:TextBox ID="txt_date" runat="server"></asp:TextBox></span>
                </div>
                <div><span><label>Day</label></span>
                    <span>
                        <asp:TextBox ID="txt_day" runat="server"></asp:TextBox></span>
                </div>
                <div><span><label>Group</label></span>
                    <span>
                        <asp:DropDownList ID="drop_group" runat="server">
                            <asp:ListItem Selected="True">LKG-UKG</asp:ListItem>
                            <asp:ListItem>I-III</asp:ListItem>
                            <asp:ListItem>IV-V</asp:ListItem>
                            <asp:ListItem>VI-VIII</asp:ListItem>
                            <asp:ListItem>IX-XII</asp:ListItem>
                    </asp:DropDownList></span>
                </div>
            </div>
            <div class="col_1_of_3 span_1_of_3 contact-form" style="overflow:hidden">
                <div><span><label>Duration</label></span>
                    <span>
                        <asp:TextBox ID="txt_duration" runat="server"></asp:TextBox></span>
                </div>
                <div><span>Number of Students</span>
                    <span>
                        <asp:TextBox ID="txt_no_of_students" runat="server"></asp:TextBox></span>
                </div>
                <div><span><label>Type</label></span>
                    <span>
                        <asp:TextBox ID="txt_type" runat="server"></asp:TextBox></span>
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="contact-form"><span>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" /></span></div>
            <div class="clear">
            </div>
            <div class="clear"></div>
            <div class="contact-form">
				  	<h3>House Competition Data</h3>
					    <div><span>
                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="competition_id" HeaderText="Competition Id" SortExpression="competition_id" />
                                    <asp:BoundField DataField="competition_name" HeaderText="Competition Name" SortExpression="competition_name" />
                                    <asp:BoundField DataField="group_sec" HeaderText="Group" SortExpression="group_sec" />
                                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                                    <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" />
                                    <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                                    <asp:BoundField DataField="no_of_students" HeaderText="No of Students" SortExpression="no_of_students" />
                                    <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HouseCompetition] WHERE [Id] = @Id" InsertCommand="INSERT INTO [HouseCompetition] ([Id], [competition_id], [competition_name], [group_sec], [date], [day], [duration], [no_of_students], [type]) VALUES (@Id, @competition_id, @competition_name, @group_sec, @date, @day, @duration, @no_of_students, @type)" SelectCommand="SELECT * FROM [HouseCompetition]" UpdateCommand="UPDATE [HouseCompetition] SET [competition_id] = @competition_id, [competition_name] = @competition_name, [group_sec] = @group_sec, [date] = @date, [day] = @day, [duration] = @duration, [no_of_students] = @no_of_students, [type] = @type WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                    <asp:Parameter Name="competition_id" Type="String" />
                                    <asp:Parameter Name="competition_name" Type="String" />
                                    <asp:Parameter Name="group_sec" Type="String" />
                                    <asp:Parameter Name="date" Type="String" />
                                    <asp:Parameter Name="day" Type="String" />
                                    <asp:Parameter Name="duration" Type="String" />
                                    <asp:Parameter Name="no_of_students" Type="String" />
                                    <asp:Parameter Name="type" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="competition_id" Type="String" />
                                    <asp:Parameter Name="competition_name" Type="String" />
                                    <asp:Parameter Name="group_sec" Type="String" />
                                    <asp:Parameter Name="date" Type="String" />
                                    <asp:Parameter Name="day" Type="String" />
                                    <asp:Parameter Name="duration" Type="String" />
                                    <asp:Parameter Name="no_of_students" Type="String" />
                                    <asp:Parameter Name="type" Type="String" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            </span></div>
				  </div>
        </div>			  
			</div>
</asp:Content>
