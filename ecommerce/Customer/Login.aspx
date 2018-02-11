﻿<%@ Page Language="C#" AutoEventWireup="true"    CodeFile="Login.aspx.cs" Inherits="ecomNew.Login" %>

<!DOCTYPE html>
<script runat="server">

    
    
    
    
   
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style.css" rel="stylesheet" />
    <meta charset="utf-8"/>
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
<!--Less styles -->
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="../themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="../themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="../themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="../themes/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<!-- Google-code-prettify -->	
	<link href="../themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="../themes/images/ico/favicon.ico"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../themes/images/ico/apple-touch-icon-144-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../themes/images/ico/apple-touch-icon-114-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../themes/images/ico/apple-touch-icon-72-precomposed.png"/>
    <link rel="apple-touch-icon-precomposed" href="../themes/images/ico/apple-touch-icon-57-precomposed.png"/>
	<style type="text/css" id="enject"></style>
  </head>
<body>
<div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong> User</strong></div>
	<div class="span6">
	<div class="pull-right">
		<a href="product_summary.aspx"><span class="">Fr</span></a>
		<a href="product_summary.aspx"><span class="">Es</span></a>
		<span class="btn btn-mini">En</span>
		<a href="product_summary.aspx"><span>&pound;</span></a>
		<span class="btn btn-mini">$155.00</span>
		<a href="product_summary.aspx"><span class="">$</span></a>
		<asp:HyperLink ID="hl1" runat="server"  Text="Itemes in your cart"> </asp:HyperLink> 
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.aspx"><img src="../themes/images/logo.png" alt="Bootsshop"/></a>
		<form class="form-inline navbar-search" action="products.aspx" >
		<input id="srchFld" style="height:30px;"class="srchTxt" type="text" />
		  <select class="srchTxt">
			<option>All</option>
			<option>CLOTHES </option>
			<option>FOOD AND BEVERAGES </option>
			<option>HEALTH & BEAUTY </option>
			<option>SPORTS & LEISURE </option>
			<option>BOOKS & ENTERTAINMENTS </option>
		</select> 
		    <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
   </form>
    <ul id="topMenu" class="nav pull-right">
	 <%--<li class=""><a href="special_offer.aspx">Specials Offer</a></li>
	 <li class=""><a href="normal.aspx">Delivery</a></li>
	 <li class=""><a href="contact.aspx">Contact</a></li>--%>
	 <li class="">
	<%-- <a href="#login" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Login</span></a>--%>
	<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
               
			<%--<h3>Login Block</h3>--%>
		  </div>
         
		  <div class="modal-body">
			<%--<form class="form-horizontal loginFrm" >
			  <div class="control-group">								
				<asp:TextBox runat="server" ID="inputEmail" placeholder="Email"></asp:TextBox>
              </div>
			  <div class="control-group">
					<asp:TextBox runat="server" id="inputPassword" placeholder="Password"></asp:TextBox>
			  </div>
			  <div class="control-group">
				<asp:Label runat="server" class="checkbox">
				<asp:CheckBox runat="server" type="checkbox" Text="Remember me"/> 
				</asp:Label>
			  </div>
					
			<asp:Button ID="signinbtn" type="submit" runat="server" class="btn btn-success" Text="Sign in"/>
			<asp:Button ID="closebtn" class="btn"  data-dismiss="modal" aria-hidden="true" runat="server" Text="Close"/>--%>
		  </div>
	</div>
	</li>
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		<div class="well well-small"><a id="myCart" href="product_summary.aspx"><img src="../themes/images/ico-cart.png" alt="cart">3 Items in your cart  <span class="badge badge-warning pull-right">$155.00</span></a></div>
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu open"><a> ELECTRONICS [230]</a>
				<ul>
				<li><a class="active" href="products.aspx"><i class="icon-chevron-right"></i>Cameras (100) </a></li>
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Computers, Tablets & laptop (30)</a></li>
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Mobile Phone (80)</a></li>
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Sound & Vision (15)</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> CLOTHES [840] </a>
			<ul style="display:none">
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Women's Clothing (45)</a></li>
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Women's Shoes (8)</a></li>												
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Women's Hand Bags (5)</a></li>	
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Men's Clothings  (45)</a></li>
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Men's Shoes (6)</a></li>												
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Kids Clothing (5)</a></li>												
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Kids Shoes (3)</a></li>												
			</ul>
			</li>
			<li class="subMenu"><a>FOOD AND BEVERAGES [1000]</a>
				<ul style="display:none">
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Angoves  (35)</a></li>
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Bouchard Aine & Fils (8)</a></li>												
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>French Rabbit (5)</a></li>	
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Louis Bernard  (45)</a></li>
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>BIB Wine (Bag in Box) (8)</a></li>												
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Other Liquors & Wine (5)</a></li>												
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Garden (3)</a></li>												
				<li><a href="products.aspx"><i class="icon-chevron-right"></i>Khao Shong (11)</a></li>												
			</ul>
			</li>
			<li><a href="products.aspx">HEALTH & BEAUTY [18]</a></li>
			<li><a href="products.aspx">SPORTS & LEISURE [58]</a></li>
			<li><a href="products.aspx">BOOKS & ENTERTAINMENTS [14]</a></li>
		</ul>
		<br/>
		  <div class="thumbnail">
			<img src="../themes/images/products/panasonic.jpg" alt="Bootshop panasonoc New camera"/>
              
			<div class="caption">
			  <h5>Panasonic</h5>
				<h4 style="text-align:center"><a class="btn" href="product_details.aspx"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
			</div>
		  </div><br/>
			<div class="thumbnail">
				<img src="../themes/images/products/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">
				<div class="caption">
				  <h5>Kindle</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.aspx"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
				</div>
			  </div><br/>
			<div class="thumbnail">
				<img src="../themes/images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
				<div class="caption">
				  <h5>Payment Methods</h5>
				</div>
			  </div>
	</div>
<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.aspx">Home</a> <span class="divider">/</span></li>
		<li class="active">Login</li>
    </ul>
	<h3> Login</h3>	
	<hr class="soft"/>
	
	<div class="row">
		
        
		<div class="span1"> &nbsp;</div>
		<div class="span4">
			<div class="well">
			<h5>ALREADY REGISTERED ?</h5>
		<form runat="server" id="form"  >
			  <div class="control-group">
				<asp:Label runat="server" class="control-label" for="inputEmail1">Email</asp:Label>
				<div class="controls">
				<asp:TextBox ID="inputEmail1" runat="server" class="span3" placeholder="Email" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inputEmail1" Display="Dynamic" ErrorMessage="email required"  CssClass="text-danger" SetFocusOnError="True" >* Email address required</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inputEmail1" ErrorMessage="RegularExpressionValidator"  CssClass="text-danger" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="all">Invalid format</asp:RegularExpressionValidator>

				</div>
			  </div>
            
			  <div class="control-group">
				<asp:Label runat="server" class="control-label" for="inputPassword1">Password</asp:Label>
				<div class="controls">
				  <asp:TextBox ID="inputPassword1" type="password" runat="server" class="span3" placeholder="Password" ></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="inputPassword1" Display="Dynamic" ErrorMessage="Password Required" CssClass="text-danger" >* Password required</asp:RequiredFieldValidator>
            	</div>
                 
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <asp:Button ID="signin2btn" ButtonType="Link" runat="server" class="btn" Text="Sign in" OnClick="signin2btn_Click"></asp:Button> <a href="forgotPassword.aspx">Forgot password?</a>
				<br /><br />
                    <br />
                    
                    <h5>Don't have an account ?</h5><a href="Registration.aspx"><strong>Sign Up</strong>  </a>
                
                </div>
			  </div>
			</form>
		</div>
		</div>
     
	</div>	
	
</div>
</div></div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<div class="row">
			<%--<div class="span3">
				<h5>ACCOUNT</h5>
				<a href="login.aspx">YOUR ACCOUNT</a>
				<a href="login.aspx">PERSONAL INFORMATION</a> 
				<a href="login.aspx">ADDRESSES</a> 
				<a href="login.aspx">DISCOUNT</a>  
				<a href="login.aspx">ORDER HISTORY</a>
			 </div>--%>
			<div class="span3">
				<h5>INFORMATION</h5>
				<a href="contact.aspx">CONTACT</a>  
				<a href="Registration.aspx">REGISTRATION</a>  
				<%--<a href="legal_notice.aspx">LEGAL NOTICE</a>  
				<a href="tac.aspx">TERMS AND CONDITIONS</a> 
				<a href="faq.aspx">FAQ</a>--%>
			 </div>
			<div class="span3">
				<h5>OUR OFFERS</h5>
				<a href="products.aspx">NEW PRODUCTS</a> 
				<%--<a href="#">TOP SELLERS</a>  
				<a href="special_offer.aspx">SPECIAL OFFERS</a>  
				<a href="#">MANUFACTURERS</a> 
				<a href="#">SUPPLIERS</a> --%>
			 </div>
			<div id="socialMedia" class="span3 pull-right">
				<h5>SOCIAL MEDIA </h5>
				<a href="#"><img width="60" height="60" src="../themes/images/facebook.png" title="facebook" alt="facebook"/></a>
				<a href="#"><img width="60" height="60" src="../themes/images/twitter.png" title="twitter" alt="twitter"/></a>
				<a href="#"><img width="60" height="60" src="../themes/images/youtube.png" title="youtube" alt="youtube"/></a>
			 </div> 
		 </div>
		<p class="pull-right">&copy; Bootshop</p>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="../themes/js/jquery.js" type="text/javascript"></script>
	<script src="../themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../themes/js/google-code-prettify/prettify.js"></script>
	
	<script src="../themes/js/bootshop.js"></script>
    <script src="../themes/js/jquery.lightbox-0.5.js"></script>
	
	<!-- Themes switcher section ============================================================================================= -->
<div id="secectionBox">
<link rel="stylesheet" href="../themes/switch/themeswitch.css" type="text/css" media="screen" />
<script src="../themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
	<div id="themeContainer">
	<div id="hideme" class="themeTitle">Style Selector</div>
	<div class="themeName">Oregional Skin</div>
	<div class="images style">
	<a href="themes/css/#" name="bootshop"><img src="../themes/switch/images/clr/bootshop.png" alt="bootstrap business templates" class="active"></a>
	<a href="themes/css/#" name="businessltd"><img src="../themes/switch/images/clr/businessltd.png" alt="bootstrap business templates" class="active"></a>
	</div>
	<div class="themeName">Bootswatch Skins (11)</div>
	<div class="images style">
		<a href="themes/css/#" name="amelia" title="Amelia"><img src="../themes/switch/images/clr/amelia.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spruce" title="Spruce"><img src="../themes/switch/images/clr/spruce.png" alt="bootstrap business templates" ></a>
		<a href="themes/css/#" name="superhero" title="Superhero"><img src="../themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cyborg"><img src="../themes/switch/images/clr/cyborg.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="cerulean"><img src="../themes/switch/images/clr/cerulean.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="journal"><img src="../themes/switch/images/clr/journal.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="readable"><img src="../themes/switch/images/clr/readable.png" alt="bootstrap business templates"></a>	
		<a href="themes/css/#" name="simplex"><img src="../themes/switch/images/clr/simplex.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="slate"><img src="../themes/switch/images/clr/slate.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="spacelab"><img src="../themes/switch/images/clr/spacelab.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="united"><img src="../themes/switch/images/clr/united.png" alt="bootstrap business templates"></a>
		<p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples and you can build your own color scheme in the backend.</small></p>
	</div>
	<div class="themeName">Background Patterns </div>
	<div class="images patterns">
		<a href="themes/css/#" name="pattern1"><img src="../themes/switch/images/pattern/pattern1.png" alt="bootstrap business templates" class="active"></a>
		<a href="themes/css/#" name="pattern2"><img src="../themes/switch/images/pattern/pattern2.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern3"><img src="../themes/switch/images/pattern/pattern3.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern4"><img src="../themes/switch/images/pattern/pattern4.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern5"><img src="../themes/switch/images/pattern/pattern5.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern6"><img src="../themes/switch/images/pattern/pattern6.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern7"><img src="../themes/switch/images/pattern/pattern7.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern8"><img src="../themes/switch/images/pattern/pattern8.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern9"><img src="../themes/switch/images/pattern/pattern9.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern10"><img src="../themes/switch/images/pattern/pattern10.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern11"><img src="../themes/switch/images/pattern/pattern11.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern12"><img src="../themes/switch/images/pattern/pattern12.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern13"><img src="../themes/switch/images/pattern/pattern13.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern14"><img src="../themes/switch/images/pattern/pattern14.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern15"><img src="../themes/switch/images/pattern/pattern15.png" alt="bootstrap business templates"></a>
		
		<a href="themes/css/#" name="pattern16"><img src="../themes/switch/images/pattern/pattern16.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern17"><img src="../themes/switch/images/pattern/pattern17.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern18"><img src="../themes/switch/images/pattern/pattern18.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern19"><img src="../themes/switch/images/pattern/pattern19.png" alt="bootstrap business templates"></a>
		<a href="themes/css/#" name="pattern20"><img src="../themes/switch/images/pattern/pattern20.png" alt="bootstrap business templates"></a>
		 
	</div>
	</div>
</div>
<span id="themesBtn"></span>
  </form>   
</body>
</html>