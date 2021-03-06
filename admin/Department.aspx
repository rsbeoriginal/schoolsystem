﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="School.admin.WebForm8" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .accordianHeader
        {
            color:White;
            background-color:#006A00;
            font-family:Arial,Sans-Serif;
            font-size:12px;
            font-weight:bold;
            padding:5px;
            margin-top:5px;
            cursor:pointer;
        }
        .accordianSelected
        {
            color:White;
            background-color:#339933;
            font-family:Arial,Sans-Serif;
            font-size:12px;
            font-weight:bold;
            padding:5px;
            margin-top:5px;
            cursor:pointer;
        }
        .accordianContent
        {
            color:Black;
            background-color:#66CC66;
            font-family:Sans-Serif;
            font-size:12px;            
            padding:5px;
            padding-top:10px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="main">
        <div class="section group">
            <div class="col_1_of_3 span_2_of_3">
                <div class="contact-form" >
                    <h3>Department</h3>		
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>			    
                   <div>
                    <div>
                        <span>
                            <asp:Label ID="l_dept_id" runat="server" Text=""></asp:Label>
                        </span>
                    </div>
                    <div>
                        <span>
                            <asp:Label ID="l_status" runat="server" ForeColor="Red"></asp:Label>
                        </span>
                    </div>
                    </div>
                    <!--
                   <div class="clear"></div>
					    <div>
                        <div>
						    	<span><label>Add Department</label></span>
						    	<span><asp:TextBox ID="txt_add_department" runat="server"></asp:TextBox></span>
						    </div>						    			  
						<div>
						   		<span><asp:Button ID="bt_submit" runat="server" Text="Submit" OnClick="bt_submit_Click" /></span>
						  </div>
                        </div> 
                    <div class="clear"></div>
                    -->
					<!--    <div>
                            // label dept_id moved
                            <div><span><label>Upload Files for department</label></span>
                                <label>Select Department</label>
                                <span>
                                    <asp:DropDownList ID="drop_dept" runat="server" DataSourceID="SqlDataSource1" DataTextField="department_name" DataValueField="department_name"></asp:DropDownList></span>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [department_name] FROM [DepartmentList]"></asp:SqlDataSource>
                                <span><label>Description of the file</label></span>    
                                <span><asp:TextBox ID="txt_file_desc" runat="server"></asp:TextBox></span>
                                <span>
                                    <asp:FileUpload ID="FileUpload1" runat="server" /></span>
                                <span>
                                    <asp:Button ID="bt_upload" runat="server" Text="Upload File" OnClick="bt_upload_Click" /></span>
                            </div>
                            
					    </div>  -->
                    
                    
                        <div><asp:Accordion ID="Accordion1" runat="server" 
                        ContentCssClass="accordianContent" CssClass="style1" FadeTransitions="True" 
                        Font-Names="Arial Rounded MT Bold" HeaderCssClass="accordianHeader" 
                        HeaderSelectedCssClass="accordianSelected" Height="187px" 
                        RequireOpenedPane="False" SuppressHeaderPostbacks="True" >
                        <panes>
                            <asp:AccordionPane ID="AccordionPane1" runat="server">
                                <header>
                                    1. Add Department
                                </header>
                                <content>
                                    <div>						    	
						    	<span><asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox></span>
						    </div>						    			  
						<div>
						   		<span><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="bt_submit_Click" /></span>                            
						  </div>
                                    
                                </content>
                            </asp:AccordionPane>
                            <asp:AccordionPane ID="AccordionPane2" runat="server">
                                <header>
                                    2. Upload Files for department
                                </header>
                                <content>
                                    <div>
                            <div><span>
                                <div><span>
                                <asp:Label ID="l_dept_file_id" runat="server" Text="Label" Font-Size="Medium"></asp:Label></span></div>
                            <div>
                                <label style="font-size:medium">Select Department</label>
                                <span>
                                    <asp:DropDownList ID="DropDownList1" Font-Size="Medium" runat="server" DataSourceID="SqlDataSource1" DataTextField="department_name" DataValueField="department_name"></asp:DropDownList></span>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [department_name] FROM [DepartmentList]"></asp:SqlDataSource>
                                <span><label style="font-size:medium">Description of the file</label></span>    
                                <span><asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium"></asp:TextBox></span>
                                <span>
                                    <asp:FileUpload ID="FileUpload2" runat="server" Font-Size="Medium" /></span>
                                <span>
                                    <asp:Button ID="Button2" runat="server" Text="Upload File" OnClick="bt_upload_Click" /></span>
                            </div>
                            
					    </div>
                                </content>
                            </asp:AccordionPane>                                                                                   
                        </panes>
                    </asp:Accordion></div>

                    <div class="clear"></div>
                        <div>
                            <div><span><label>List All Departments</label></span>
                               <span style="font-size:larger;align-content:center;">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
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
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DepartmentList]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [DepartmentList] WHERE [Id] = @original_Id AND (([department_name] = @original_department_name) OR ([department_name] IS NULL AND @original_department_name IS NULL))" InsertCommand="INSERT INTO [DepartmentList] ([Id], [department_name]) VALUES (@Id, @department_name)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [DepartmentList] SET [department_name] = @department_name WHERE [Id] = @original_Id AND (([department_name] = @original_department_name) OR ([department_name] IS NULL AND @original_department_name IS NULL))">
                                     <DeleteParameters>
                                         <asp:Parameter Name="original_Id" Type="Int32" />
                                         <asp:Parameter Name="original_department_name" Type="String" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Id" Type="Int32" />
                                         <asp:Parameter Name="department_name" Type="String" />
                                     </InsertParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="department_name" Type="String" />
                                         <asp:Parameter Name="original_Id" Type="Int32" />
                                         <asp:Parameter Name="original_department_name" Type="String" />
                                     </UpdateParameters>
                                </asp:SqlDataSource>
                                 </span>
                            </div>
                            
					    </div>  
                     <div class="clear"></div>
                    <div><span><label>List of Department Files</label></span>
                       <span style="font-size:larger;align-content:center;">
                            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                                    <asp:BoundField DataField="file_name" HeaderText="file_name" SortExpression="file_name" />
                                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
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
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DepartmentFileList] WHERE [id] = @original_id AND (([department_name] = @original_department_name) OR ([department_name] IS NULL AND @original_department_name IS NULL)) AND (([file_name] = @original_file_name) OR ([file_name] IS NULL AND @original_file_name IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL))" InsertCommand="INSERT INTO [DepartmentFileList] ([id], [department_name], [file_name], [description]) VALUES (@id, @department_name, @file_name, @description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [DepartmentFileList]" UpdateCommand="UPDATE [DepartmentFileList] SET [department_name] = @department_name, [file_name] = @file_name, [description] = @description WHERE [id] = @original_id AND (([department_name] = @original_department_name) OR ([department_name] IS NULL AND @original_department_name IS NULL)) AND (([file_name] = @original_file_name) OR ([file_name] IS NULL AND @original_file_name IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_department_name" Type="String" />
                                <asp:Parameter Name="original_file_name" Type="String" />
                                <asp:Parameter Name="original_description" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                                <asp:Parameter Name="department_name" Type="String" />
                                <asp:Parameter Name="file_name" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="department_name" Type="String" />
                                <asp:Parameter Name="file_name" Type="String" />
                                <asp:Parameter Name="description" Type="String" />
                                <asp:Parameter Name="original_id" Type="Int32" />
                                <asp:Parameter Name="original_department_name" Type="String" />
                                <asp:Parameter Name="original_file_name" Type="String" />
                                <asp:Parameter Name="original_description" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        </span>
                        
                    </div>
                    <div class="clear"></div>
                        

                </div>
                
            </div>

            
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
