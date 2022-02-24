$(document).ready(function(){
	// rechrge and fillter
	  $(document).ready(function(){
    $("#myInput").on("keyup", function() {
      var value = $(this).val().toLowerCase();
      $("#card .card").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });
    });
  });
  
  // scroll nav
    $(window).scroll(function(){
        // sticky navbar on scroll script
        if(this.scrollY > 20){
            $('.navbar').addClass("sticky");
            $('.dropDown').removeClass("show-hide");
            $('.hide-dropdown').removeClass("active");
        }else{
            $('.navbar').removeClass("sticky");
            $('.dropDown').removeClass("show-hide");
            $('.hide-dropdown').removeClass("active");
        }

        // scroll-up button show/hide script
        if (this.scrollY > 500) {
            $('.scroll-up-btn').addClass("show");
        } else {
            $('.scroll-up-btn').removeClass("show");
        }

    });

    // scroll up script
    $('.scroll-up-btn').click(function(){
        $('html').animate({scrollTop:0});
        // removing smooth scroll on slide-up button click
        $('html').css("scrollBehavior", "auto");
        
    });

    // toggle menu/navbar script
    $('.menu-btn').click(function(){
        
        $('.navbar .menu').toggleClass("active");
        $('.menu-btn i').toggleClass("active");
        
        
    });

    // toggle dropdown script 
    $('.Profile').click(function(){
        
        $('.dropDown').toggleClass("show-hide");
        $('.hide-dropdown').toggleClass("active");
        
    });

    $('.hide-dropdown').click(function(){

        $(this).removeClass("active");
        $('.dropDown').removeClass("show-hide");
        
        
    });

    // tayping animation script
    var typed = new Typed(".typing",{
        strings : ["Les ecoles","Les formation","Les formateur"],
        typeSpeed : 100,
        backSpeed : 60,
        loop : true
    });


    // owl-crousel script
$('.ecoles .owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    autoplay:true,
   // nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:2
        }
    }
})

    // owl-crousel script les formations
$('.formation .owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    autoplay:true,
   // nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
})

    

    


});