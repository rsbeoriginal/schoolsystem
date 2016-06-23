<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="HouseCompetitions.aspx.cs" Inherits="School.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>House Competitions</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
	    <div class="contact-form heading3" align="center"><h3>Inter-House Competitions</h3></div>  				
		<div class="clear"></div> 
		<div align="center">
                  <div class="heading3"><h3>Competitions for Classes LKG-UKG</h3></div>
                  <div><span>
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="LKG_UKG_datasource" ForeColor="Black">
                          <Columns>
                              <asp:BoundField DataField="competition_id" HeaderText="Serial No" SortExpression="competition_id" >
                              <ItemStyle BorderStyle="Solid" BorderWidth="5px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date">
                              <ItemStyle BorderStyle="Solid" BorderWidth="5px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="competition_name" HeaderText="Competition Name" SortExpression="competition_name" >
                              <ItemStyle BorderStyle="Solid" BorderWidth="5px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" >
                              <ItemStyle BorderStyle="Solid" BorderWidth="5px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" >
                              <ItemStyle BorderStyle="Solid" BorderWidth="5px" />
                              </asp:BoundField>
                              <asp:BoundField DataField="no_of_students" HeaderText="No of students" SortExpression="no_of_students" >
                              <ItemStyle BorderStyle="Solid" BorderWidth="5px" />
                              </asp:BoundField>
                          </Columns>
                          <FooterStyle BackColor="#CCCCCC" />
                          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                          <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                          <RowStyle BackColor="White" />
                          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#F1F1F1" />
                          <SortedAscendingHeaderStyle BackColor="#808080" />
                          <SortedDescendingCellStyle BackColor="#CAC9C9" />
                          <SortedDescendingHeaderStyle BackColor="#383838" />
                      </asp:GridView>
                      <asp:SqlDataSource ID="LKG_UKG_datasource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HouseCompetition] WHERE ([group_sec] = @group_sec) ORDER BY [competition_id]">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="LKG-UKG" Name="group_sec" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </span>
                 </div>
			  </div>
        <div class="clear"></div> <br />
        <div align="center">
            <div class="heading3"><h3>Competitions for Classes I-III</h3></div>
            <div>
                <span>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="competition_id" HeaderText="Serial No" SortExpression="competition_id" >
                            <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="competition_name" HeaderText="Competition Name" SortExpression="competition_name" >
                            <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
                            <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" >
                            <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" >
                            <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="no_of_students" HeaderText="No of Students" SortExpression="no_of_students" >
                            <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HouseCompetition] WHERE ([group_sec] = @group_sec) ORDER BY [Id]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="I-III" Name="group_sec" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </span>
            </div>
        </div>
        <div class="clear"></div><br /> 
        <div align="center">
            <div class="heading3"><h3>Competitions for Classes IV-V</h3></div>
            <div><span>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="IV_V_datasource" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="competition_id" HeaderText="Serial No" SortExpression="competition_id" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="competition_name" HeaderText="Competition Name" SortExpression="competition_name" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="no_of_students" HeaderText="No of Students" SortExpression="no_of_students" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="IV_V_datasource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HouseCompetition] WHERE ([group_sec] = @group_sec) ORDER BY [competition_id]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="IV-V" Name="group_sec" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </span></div>
        </div>
        <div class="clear"></div> <br />
        <div align="center">
            <div class="heading3"><h3>Competitions for Classes VI-VIII</h3></div>
            <div><span>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="competition_id" HeaderText="Serial No" SortExpression="competition_id" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="competition_name" HeaderText="Competition Name" SortExpression="competition_name" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="no_of_students" HeaderText="No of students" SortExpression="no_of_students" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HouseCompetition] WHERE ([group_sec] = @group_sec) ORDER BY [competition_id]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="VI-VIII" Name="group_sec" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </span></div>
        </div>
        <div class="clear"></div> <br />
        <div align="center">
            <div class="heading3"><h3>Competitions for Classes IX-XII</h3></div>
            <div><span>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="competition_id" HeaderText="Serial No" SortExpression="competition_id" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="competition_name" HeaderText="Competition Name" SortExpression="competition_name" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="no_of_students" HeaderText="No of Students" SortExpression="no_of_students" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" >
                        <ItemStyle BorderStyle="Solid" BorderWidth="4px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HouseCompetition] WHERE ([group_sec] = @group_sec) ORDER BY [competition_id]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="IX-XII" Name="group_sec" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </span></div>
        </div>
        <div class="clear"></div> 
			</div>
</asp:Content>
