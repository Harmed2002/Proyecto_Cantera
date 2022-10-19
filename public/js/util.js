function openModal(title) {
    $("#adminModal").modal("show");
    $("#modalTitle").html(title);
}

function hideModal() {
    $("#adminModal").modal("hide");
    $('.modal-body').empty();
    $('.messageErrors').empty();
    $('.date-event').empty();

    // $('.form').empty();
}