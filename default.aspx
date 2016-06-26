<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="School.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Delhi Public School | Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div class="banner">
            <img alt="" src="images/banner1.jpg" />
        </div>
        <div class="section-top" style="overflow:hidden">
            <div class="col_1_of_3 span_1_of_3">
                <div class="title-img">
                    <div class="title">
                        <img alt="" src="images/book1.png" /></div>
                    <div class="title-desc">
                        <p>
                            About School</p>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <p class="desc">
                    <strong>Delhi Public School, NTPC Farakka</strong></p>
                <p class="desc1">
                    Delhi Public School, NTPC Farakka was established in 1993 inside NTPC Township, Farakka, Murshidabad, West Bengal. It is run by the Delhi Public School Society, New Delhi in association with NTPC Farakka. It is the first Delhi Public School to have been established in the state of West Bengal. It offers schooling from Nursery to class-XII. The school has a 5-acre fully fenced campus at the far end of NTPC Township beside the tributary of river Ganges.The school is well- connected to NH-34 and nearby townships of NTPC and FBP.</p>
                <a class="btn btn-primary" href="about.aspx"><span>Read more</span><img alt="" src="images/more_arrow.png" /></a>
            </div>
            <div class="col_1_of_3 span_1_of_3">
                <div class="title-img1">
                    <div class="title">
                        <img alt="" src="images/cup.png" /></div>
                    <div class="title-desc">
                        <p>
                            Principal&#39;s Message</p>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <p class="desc1">
                    &#39;Put Passion, Zeal and Enthusiasm into everything you do&#39; - a reality that strikes us time and again, each time a task is taken up at hand. With dynamic changes in the contemporary world, we need to prove our mettle by presence and performance.<br />
                    <span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22.1px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(253, 244, 232);">It is the reciprocation between the teacher and the taught that makes a building a school. School life - a reservoir of talent and fervor is a prized possession that a child loves to treasure throughout. A DPSite learns over the years in school, that in-spite of surface tension, one must strive to remain at the top.</span></p>
                <a class="btn btn-primary1" href="PrincipalMessage.aspx"><span>Read more</span><img alt="" src="images/more_arrow.png" /></a>
            </div>
            <div class="col_1_of_3 span_1_of_3" style="overflow:hidden">
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
                            <ul id="itemPlaceholderContainer" class="latest-news-grid" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <marquee direction="up" scroll="continuous" onmouseover="this.stop();" onmouseout="this.start();" scrolldelay="120">
                                    <li runat="server" id="itemPlaceholder" />
                                </marquee>
                            </ul>
                            <div style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            </div>
                        </LayoutTemplate>
                        
                    </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP(4) [title], [body] FROM [News] WHERE ([status] &lt;&gt; @status) ORDER BY [id] DESC">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="HIDE" Name="status" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <a class="btn btn-primary2" href="News.aspx#news"><span>Read more</span><img alt="" src="images/more_arrow.png" /></a>
            </div>
            <div class="clear">
            </div>
        </div>
    </div>
</asp:Content>
