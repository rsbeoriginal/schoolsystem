<%@ Page Title="" Language="C#" MasterPageFile="gallery.Master" AutoEventWireup="true" CodeBehind="principals.aspx.cs" Inherits="School.WebForm6" %>
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
				  	<h3>Principals</h3>
				</div>
				<div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="principals/SUNIL%20SINHA%20ROY.jpg" class="swipebox" title="Mr. SUNIL SINHA ROY"> <img src="principals/SUNIL%20SINHA%20ROY.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Mr. SUNIL SINHA ROY</h4>
						<p>APRIL 1993 to MARCH 1996</p>						
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="principals/VINOD%20KUMAR%20ARORA.jpg" class="swipebox" title="Mr. VINOD KUMAR ARORA"> <img src="principals/VINOD%20KUMAR%20ARORA.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Mr. VINOD KUMAR ARORA</h4>
						<p>MAY 1996 to AUGUST 2002</p>						
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="principals/Sudarshan%20Sonar.jpg" class="swipebox" title="Mr. SUDARSHAN SONAR"> <img src="principals/Sudarshan%20Sonar.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Mr. SUDARSHAN SONAR</h4>
						<p>AUGUST 2002 to DECEMBER 2008</p>
						
					</div>
					<div class="grid_1_of_4 images_1_of_4">
						<a href="principals/SUBRAHMANYA%20KUMAR.jpg" class="swipebox" title="Mr. SUBRAHMANYA KUMAR S."> <img src="principals/SUBRAHMANYA%20KUMAR.jpg" alt=""><span class="zoom-icon"></span> </a>
						<h4>Mr. SUBRAHMANYA KUMAR S.</h4>
						<p>DECEMBER 2008 to FEBRUARY 2013</p>
						
					</div>
					<div class="clear"></div> 
		   		</div>
            <div class="section group">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="principals/KAMLESH%20KUMAR%20JAISWAL.png" class="swipebox" title="Mr. KAMLESH KUMAR JAISWAL"> <img src="principals/KAMLESH%20KUMAR%20JAISWAL.png" alt=""><span class="zoom-icon"></span> </a>
						<h4>Mr. KAMLESH KUMAR JAISWAL</h4>
						<p>FEBRUARY 2013</p>						
					</div>					
					<div class="clear"></div> 
		   		</div>
</asp:Content>
