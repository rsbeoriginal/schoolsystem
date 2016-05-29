<%@ Page Title="" Language="C#" MasterPageFile="gallery.Master" AutoEventWireup="true" CodeBehind="inaugration.aspx.cs" Inherits="School.WebForm5" %>
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
				  	<h3>Inaugration</h3>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="inaugration/1.jpg" class="swipebox" title="Inaugration"> <img src="inaugration/1.jpg" alt=""><span class="zoom-icon"></span> </a>						
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="inaugration/2.jpg" class="swipebox" title="Inaugration"> <img src="inaugration/2.jpg" alt=""><span class="zoom-icon"></span> </a>
						
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="inaugration/3.jpg" class="swipebox" title="Inaugration"> <img src="inaugration/3.jpg" alt=""><span class="zoom-icon"></span> </a>
						
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="inaugration/4.jpg" class="swipebox" title="Inaugration"> <img src="inaugration/4.jpg" alt=""><span class="zoom-icon"></span> </a>
						
					</div>
					<div class="clear"></div> 
		   		</div>
            <div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="inaugration/5.jpg" class="swipebox" title="Inaugration"> <img src="inaugration/5.jpg" alt=""><span class="zoom-icon"></span> </a>
						
					</div>					
					<div class="clear"></div> 
		   		</div>
</asp:Content>
