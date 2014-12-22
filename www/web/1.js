var PDFJSViewerUI = {
    isHeaderShown: function() {
        return $("#headerID").css('top').split("px")[0] > -30;
    },
    closeThumbView: function() {
        if (PDFView.sidebarOpen) {
            $("#outerContainer").addClass('sidebarMoving');
            $("#outerContainer").removeClass('sidebarOpen');
            PDFView.sidebarOpen = false;
            PDFView.renderHighestPriority();
            
            $("#main").width(document.body.scrollWidth);
	}
    },
    toggleHeader: function() {
        if (this.isHeaderShown()) {
            this.hideHeader();
        } else {
            this.showHeader();
        }
    },
    showHeader: function() {
        $("#headerID").animate({
            top: '+=64px'
        }, 100);
        $("#toggle-header-button").animate({
            top: '+=64px'
        }, 100);
        $("#toggle-header-button").attr("src", "./images/go-up.svg");
    },
    hideHeader: function() {
        PDFJSViewerUI.closeThumbView();
        $("#headerID").animate({
            top: '-=64px'
        }, 100);
        $("#toggle-header-button").animate({
            top: '-=64px'
        }, 100);
        $("#toggle-header-button").attr("src", "./images/go-down.svg");
    }
} 

$( document ).ready(function() {
    
    $("#sidebarContainer").height(document.body.scrollHeight - 75);
    $("#navigation-button").click(function() {
        $("#outerContainer").addClass('sidebarMoving');
        $("#outerContainer").addClass('sidebarOpen');
        PDFView.sidebarOpen = true;
        PDFView.renderHighestPriority();
        PDFView.switchSidebarView('thumbs');
        $("#navigation-list").hide(100);
        
        $("#main").width(document.body.scrollWidth - $("#sidebarContainer").width() + 4);
        $("#sidebarContainer").height(document.body.scrollHeight - $("#headerID").height());
    });
    $("#close-sidebar-button").click(function() {
        PDFJSViewerUI.closeThumbView();
    });
    $("#main").click(function(){
        PDFJSViewerUI.toggleHeader();
    });
    $("#toggle-header-button").click(function(){
        PDFJSViewerUI.toggleHeader();
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
