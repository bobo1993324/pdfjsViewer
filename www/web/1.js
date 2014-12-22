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

    //pinch resize
    var viewerElement = document.getElementById('viewer');
    var mc = new Hammer.Manager(viewerElement, {touchAction: 'auto'});
    var pinch = new Hammer.Pinch();
    // add to the Manager
    mc.add([pinch]);
    mc.on("pinchend", function(ev) {
        if (ev.scale > 1.5) {
            PDFView.zoomIn(Math.floor((ev.scale - 1.0) / 0.5));
        } else if (ev.scale < 0.8) {
            PDFView.zoomOut(Math.floor((1.0 - ev.scale) / 0.2));
        }
    });
});
