$( document ).ready(function() {
    function closeThumbView() {
        $("#outerContainer").addClass('sidebarMoving');
        $("#outerContainer").removeClass('sidebarOpen');
        PDFView.sidebarOpen = false;
        PDFView.renderHighestPriority();
        
        $("#main").width(document.body.scrollWidth);
    }
    
    function showHeader() {
        $("#headerID").animate({
            top: '+=64px'
        }, 100);
    }
    $("#sidebarContainer").height(document.body.scrollHeight - 75);
    $("#navigation-button").click(function() {
        console.log("navigation button clicked.");
        if ($("#navigation-list").css('display') == 'none') {
            $("#navigation-list").show(100);
        } else {
            $("#navigation-list").hide(100);
        }
    });
    $("#show-thumbnails-button").click(function(){
        $("#outerContainer").addClass('sidebarMoving');
        $("#outerContainer").addClass('sidebarOpen');
        PDFView.sidebarOpen = true;
        PDFView.renderHighestPriority();
        PDFView.switchSidebarView('thumbs');
        $("#navigation-list").hide(100);
        
        $("#main").width(document.body.scrollWidth - $("#sidebarContainer").width() + 4);
    });
    $("#close-sidebar-button").click(function() {
        closeThumbView();
    });
    $("#main").click(function(){
        if ($("#headerID").css('top').split("px")[0] < -30) {
            showHeader();
        } else {
            closeThumbView();
            $("#headerID").animate({
                top: '-=64px'
            }, 100);
        }
    });
    $("#show-header-button").click(function(){
        showHeader();
    });
    $(window).resize(function() {
      $("#scaleSelectContainer").width(document.body.scrollWidth - 300);
    });
});
