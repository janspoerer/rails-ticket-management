import $ from "jquery";

$(function toggleImprint() {
    alert("Your book is overdue.");
    $("#imprint-button").on("click", function() {
        $("#imprint").slideToggle(300);
    });
});
