<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Syllabus.aspx.cs" Inherits="School.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="main">
			    <div class="section group">			    
				<div class="col_1_of_3 span_2_of_3">				
				  <div class="contact-form" align="center">
				  	<h3>Download Syllabus</h3>
        
        <div>
            <div class="link1"><span><a href="/Syllabus/Class-01.pdf" target="_blank">Class 1</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-02.pdf" target="_blank">Class 2</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-03.pdf" target="_blank">Class 3</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-04.pdf" target="_blank">Class 4</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-05.pdf" target="_blank">Class 5</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-06.pdf" target="_blank">Class 6</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-07.pdf" target="_blank">Class 7</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-08.pdf" target="_blank">Class 8</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-09.pdf" target="_blank">Class 9</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-10.pdf" target="_blank">Class 10</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-11.pdf" target="_blank">Class 11</a></span></div>
            <div class="link1"><span><a href="/Syllabus/Class-12.pdf" target="_blank">Class 12</a></span></div>
        </div>
  				</div>
                </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <div class="contact-form" >
                            
                            <div><span><asp:Button ID="Button1" runat="server" Text="Scholastic" PostBackUrl="~/Scholastic.aspx" /></span></div><br />
                            <div><span><asp:Button ID="Button2" runat="server" Text="Co-Scholastic" PostBackUrl="~/Co_Scholastic.aspx" /></span></div><br />
                            <div><span><asp:Button ID="Button3" runat="server" Text="Syllabus" PostBackUrl="~/Syllabus.aspx" /></span></div>

                        </div>
                    </div>				
				 <div class="clear"></div> 
			  			  
			</div>
     </div>
</asp:Content>
