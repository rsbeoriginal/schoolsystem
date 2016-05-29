<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="School.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col_1_of_3 span_1_of_3">
                <div class="title-img2">
                    <div class="title">
                        <img alt="" src="images/books.png" /></div>
                    <div class="title-desc">
                        <p>
                            News and Updates</p>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div class="latest-news-grid">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" > 
                        <EmptyDataTemplate>                            
                        </EmptyDataTemplate>
                        
                        <ItemSeparatorTemplate><br/></ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li>
                                <div class="latest-news-grid">
                                <asp:Label ID="titleLabel" runat="server" CssClass="title-desc" Text='<%# Eval("title") %>' />
                                <br />                                
                                <asp:Label ID="bodyLabel" runat="server" CssClass="desc1" Text='<%# Eval("body") %>' />
                                <br />
                                </div>
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <marquee direction="up" scroll="continuous" onmouseover="this.stop();" onmouseout="this.start();" scrolldelay="120">
                                    <li runat="server" id="itemPlaceholder" />
                                </marquee>
                            </ul>
                            <div style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            </div>
                        </LayoutTemplate>
                        
                    </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP (5) title, body FROM News WHERE (status &lt;&gt; @status) ORDER BY id DESC">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="HIDE" Name="status" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="clear">
                <div>
                    
                    
                </div>
</asp:Content>
