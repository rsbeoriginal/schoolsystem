<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="School.admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="main">
        <div class="section group">
            <div class="col_1_of_3 span_2_of_3">
                <div class="contact-form" >
                    <h3>Department</h3>					    
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
					    <div>
                            <div><span>
                                <asp:Label ID="l_dept_file_id" runat="server" Text="Label"></asp:Label></span></div>
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
                            
					    </div>
                    <div class="clear"></div>
                        <div>
                            <div><span><label>List All Departments</label></span>
                                <span>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                                        </Columns>
                                </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DepartmentList]"></asp:SqlDataSource>
                                 </span>
                            </div>
                            
					    </div>  
                          
                </div>
                
            </div>

            
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
