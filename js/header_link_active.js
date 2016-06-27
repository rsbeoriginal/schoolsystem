//$('li').removeClass('active');
$(document).ready(function () {
    $('ul li a').click(function () {
        alert('link clicked');
        $(this).parent().addClass('active');
    });
});
