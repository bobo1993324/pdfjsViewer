$( document ).ready(function() {
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
        
        $("#main").width(document.body.scrollWidth - $("#sidebarContainer").width());
    });
    $("#close-sidebar-button").click(function() {
        this.classList.toggle('toggled');
        $("#outerContainer").addClass('sidebarMoving');
        $("#outerContainer").removeClass('sidebarOpen');
        PDFView.sidebarOpen = false;
        PDFView.renderHighestPriority();
        
        $("#main").width(document.body.scrollWidth);
    });
});
