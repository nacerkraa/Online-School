$(document).ready(function(){
    

        $('.menu-toggler').click(function(){

        $('.brand h3').toggleClass("hide");
        $('.sidebar .side-img').toggleClass("hide");
        $('.sidebar .side-user').toggleClass("hide");
        $('.sidebar').toggleClass("hide");
        $('.main-content').toggleClass("hide");
        $('.main-content header').toggleClass("hide");
        $('.sidemenu .chiox span:last-child').toggleClass("hide");
        $('.close-mobile-menu').toggleClass("toggle-mobile");
        
    });
    
     // toggle dropdown script 
    $('.Profile').click(function(){
        
        $('.dropDown').toggleClass("show-hide");
        $('.hide-dropdown').toggleClass("active");
        
    });

    // for moblile hide
    $('.close-mobile-menu').click(function(){
    $(this).toggleClass("toggle-mobile");
    $('.brand h3').toggleClass("hide");
    $('.sidebar .side-img').toggleClass("hide");
    $('.sidebar .side-user').toggleClass("hide");
    $('.sidebar').toggleClass("hide");
    $('.main-content').toggleClass("hide");
    $('.main-content header').toggleClass("hide");
    $('.sidemenu .chiox span:last-child').toggleClass("hide");
     
  });
  
 
	
	// rechrge and fillter
	  	
    	$("#myInput").on("keyup", function() {
      	var value = $(this).val().toLowerCase();
      	$("tbody tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      	})
      });
    

});

new Morris.Line({
    // ID of the element in which to draw the chart.
    element: 'myfirstchart',
    lineColors :['#ffb606'],
    // Chart data records -- each entry in this array corresponds to a point on
    // the chart.
    data: [
      { year: '2008', value: 20 },
      { year: '2009', value: 10 },
      { year: '2010', value: 25 },
      { year: '2011', value: 5 },
      { year: '2012', value: 30 },
      { year: '2013', value: 20 },
      { year: '2014', value: 40 }
    ],
    // The name of the data record attribute that contains x-values.
    xkey: 'year',
    // A list of names of data record attributes that contain y-values.
    ykeys: ['value'],
    // Labels for the ykeys -- will be displayed when you hover over the
    // chart.
    labels: ['Value']
  });

 


  Morris.Bar({
    element: 'bar-example',
    data: [
      { y: 'avril', a: 100},
      { y: 'mai', a: 75},
      { y: 'join', a: 50},
      { y: 'juilia', a: 75},
      { y: 'auot', a: 50},
      { y: 'sep', a: 75 },
      { y: 'october', a: 100}
    ],
    xkey: 'y',
    ykeys: ['a'],
    labels: ['Series A']
  });


  