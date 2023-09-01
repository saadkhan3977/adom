$(document).ready(function (e) {
    $('.search-panel .dropdown-menu').find('a').click(function (e) {
        e.preventDefault();
        var param = $(this).attr("href").replace("#", "");
        var concept = $(this).text();
        $('.search-panel span#search_concept').text(concept);
        $('.input-group #search_param').val(param);
    });
});

$(document).ready(function () {

    $('.third-button').on('click', function () {

        $('.animated-icon3').toggleClass('open');
    });
});
$(document).ready(function () {

    $('.third-button').on('click', function () {

        $('.hodor').toggleClass('hodor-hide');
    });
});

$('.owl-carousel').owlCarousel({
    loop: true,
    nav: true,
    dots: true,
    navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
    autoplay: 3000,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
})