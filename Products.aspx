<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Products.aspx.vb" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
     <div class="heading">
        <div class="c full">
            <div class="g12-dec padh">
                    <h1 class="inline current" id="LineTitle" runat="server"><span>Products</span></h1>              
            </div>
        </div>
    </div>

    <div class="c full whitebg">
        <div class="g3-dec productnav-container marv">
            <h4 class="expander">Browse by Product</h4>
			<ul class="nostyle">
				<div runat="server" id="mainNavProductCats" ></div>
			</ul>
             <a href="/gallerylist.aspx"><h4 class="nonexpander">Samples by Industry</h4></a>
             
          
            <p class=""><span class="">Speak with a Sales Representative</span><br />
            <span class="medium lightblue">+1 800-837-7703</span>
            </p>
		</div>  
		
        <div class="g9-dec products-container whitebg">
             <div style="z-index:1;" class="g6-dec"><h4 class="ctaheading2 padboth">Cutting-edge <span class="ctamain">solutions</span><span class="ctabottom">to win more customers</span></h4>
            </div>
			<div class="fr g6-dec" style="z-index:1;" id="product" runat="server"></div>
                <div class="g12-dec padv lightbluebg productsbluebar">
                <span class="scroll-btn btnscroll1 padh">
	                    <a href="" class="">
		                    <span class="mouse">
			                    <span>
			                    </span>
		                    </span>
	                    </a>
                        <p class="scroll-btn-text">Scroll to Discover More</p>
                </span>
                </div>
          
            
            <div class="g12-dec padboth">
                <%= GetContent("Products")%><!--<p>We are your one stop shop for: Binders, Packaging, Folders, Multimedia, Websites, eLearning, Digital and Wide Format Printing. We create all these and more, with a high level of innovation and expertise. Click through our products and in-house services below for more information. We have the communication solutions you need when you need them. See what Cadillac can do for you.</p>-->
			</div>
                <div id="LineDescription" runat="server"></div>
                <div class="product-wrapper scroll1">
			
                    <div id="Cats" runat="server" class="categories"></div>
                </div>  
                <div class="padboth grey productDescriptions">
                    
                </div> 
                <div id="dtDescription" runat="server" class="descriptions"></div>
            
        </div>
        
    </div>
    

   
   <script>
       $(document).ready(function () {
           $(".navigation li.top-item.products-link").addClass("current");
           $(".navigation li.top-item.products-link a").css("background-image", "none");
           $(".navigation li.top-item.products-link").mouseover(function () {
               $("div.dropdown", this).css("left", -9999 + "px");

           });
           
            $(".productnav-container h4.expander").click(function () {

                $(this).toggleClass("hidden"); 
                $(this).next().slideToggle().toggleClass("hidden");
            });
         
       });

        </script>
        <script>


            // Animate the scroll to top
            $(document).ready(function () {
                var offset1 = $(".scroll1").offset().top;


                $(".btnscroll1").click(function (event) {
                    event.preventDefault();
                    $("html, body").animate({ scrollTop: offset1 }, 400);

                });

            });
       
        
    </script>
</asp:Content>