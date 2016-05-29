<%@ Page Title="" Language="C#" MasterPageFile="gallery.Master" AutoEventWireup="true" CodeBehind="staff.aspx.cs" Inherits="School.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!------ Light Box ------>
<script src="../js/jquery.min.js"></script> 
<link rel="stylesheet" href="../css/swipebox.css">
<script src="../js/ios-orientationchange-fix.js"></script> 
<script src="../js/jquery.swipebox.min.js"></script> 
<script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
	</script>
	<!------ Eng Light Box ------>	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heading3">
				  	<h3>Staff</h3>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="staff/1.png" class="swipebox" title="Teaching Staff"> <img src="staff/1.png" alt=""><span class="zoom-icon"></span> </a>
						<h4>Teaching Staff</h4>												
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="staff/2.png" class="swipebox" title="Non Teaching Staff"> <img src="staff/2.png" alt=""><span class="zoom-icon"></span> </a>
						<h4>Staff</h4>				
					</div>
					
					<div class="clear"></div> 
		   		</div>
</asp:Content>
