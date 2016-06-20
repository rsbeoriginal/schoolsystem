<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="School.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
			   <div class="heading3">
				  	<h3>Gallery</h3>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="gallery/school.aspx" class="swipebox" title="Image Title"> <img src="gallery/school/1.jpg" alt=""><span class="zoom-icon"></span> 
						<h4>School</h4>
                        </a>
						<p>School Buildings</p>
						<a href="gallery/school.aspx" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="gallery/staff.aspx" class="swipebox" title="Image Title"> <img src="gallery/staff/1.png" alt=""><span class="zoom-icon"></span>
						<h4>Staff</h4>
                        </a>
						<p>All Staff Members</p>
						<a href="#" class="link">Read More</a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="gallery/principals.aspx" class="swipebox" title="Image Title"> <img src="images/pic7.jpg" alt=""><span class="zoom-icon"></span>
						<h4>Principals</h4>
                        </a>
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="gallery/inaugration.aspx" class="swipebox" title="Image Title"> <img src="gallery/inaugration/1.jpg" alt=""><span class="zoom-icon"></span>
						<h4>Inaugration</h4>
                        </a>
						
					</div>
					<div class="clear"></div> 
		   		</div>
</asp:Content>
