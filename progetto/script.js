$(function() {
    $('.maparea').maphilight();
});

var modals = {
    currentModal : null,
    openModal : function(id) {
        this.currentModal = document.getElementById(id);
        this.currentModal.style.display = 'block';
    },
    close : function() {
        if (this.currentModal != null) {
        this.currentModal.style.display = 'none';
        this.currentModal = null;
        }
    }
}
    
    
// When the user clicks anywhere outside of a modal, close it
window.onclick = function(event) {
    if (event.target == modals.currentModal) {
        modals.close();
    }
}

function showRetro() {
    $('.front').hide("slow");
    $('.retro').show("slow");
    $(function() {
        $('.maparea').maphilight();
    });
}

function showFront() {
    $('.front').show("slow");
    $('.retro').hide("slow");
    $(function() {
        $('.maparea').maphilight();
    });
}


