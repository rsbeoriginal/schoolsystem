<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="school.aspx.cs" Inherits="School.WebForm8" %>
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
				  	<h3>School</h3>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="school/1.jpg" class="swipebox" title="School"> <img src="school/1.jpg" alt=""><span class="zoom-icon"></span> </a>						
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="school/2.jpg" class="swipebox" title="Primary Wing"> <img src="school/2.jpg" alt=""><span class="zoom-icon"></span> </a>					
						
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="school/3.jpg" class="swipebox" title="Main Building"> <img src="school/3.jpg" alt=""><span class="zoom-icon"></span> </a>					
						
					</div>					
					<div class="clear"></div> 
		   		</div>
</asp:Content>
