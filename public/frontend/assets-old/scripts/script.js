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

/*Product Add Page Js*/
$(document).ready(function () {
    //-- Click on detail
    $("ul.menu-items > li").on("click", function () {
        $("ul.menu-items > li").removeClass("active");
        $(this).addClass("active");
    })

    $(".attr,.attr2").on("click", function () {
        var clase = $(this).attr("class");

        $("." + clase).removeClass("active");
        $(this).addClass("active");
    })

    //-- Click on QUANTITY
    $(".btn-minus").on("click", function () {
        var now = $(".section > div > input").val();
        if ($.isNumeric(now)) {
            if (parseInt(now) - 1 > 0) { now--; }
            $(".section > div > input").val(now);
        } else {
            $(".section > div > input").val("1");
        }
    })
    $(".btn-plus").on("click", function () {
        var now = $(".section > div > input").val();
        if ($.isNumeric(now)) {
            $(".section > div > input").val(parseInt(now) + 1);
        } else {
            $(".section > div > input").val("1");
        }
    })
})

function showImage(imgPath, imgText) {
    var curImage = document.getElementById('currentImg');

    curImage.src = imgPath;
    curImage.alt = imgText;
    curImage.title = imgText;
}
/*Product Add Page Js*/

/*Login Page Js*/
var LoginModalController = {
    tabsElementName: ".logmod__tabs li",
    tabElementName: ".logmod__tab",
    inputElementsName: ".logmod__form .input",
    hidePasswordName: ".hide-password",

    inputElements: null,
    tabsElement: null,
    tabElement: null,
    hidePassword: null,

    activeTab: null,
    tabSelection: 0, // 0 - first, 1 - second

    findElements: function () {
        var base = this;

        base.tabsElement = $(base.tabsElementName);
        base.tabElement = $(base.tabElementName);
        base.inputElements = $(base.inputElementsName);
        base.hidePassword = $(base.hidePasswordName);

        return base;
    },

    setState: function (state) {
        var base = this,
            elem = null;

        if (!state) {
            state = 0;
        }

        if (base.tabsElement) {
            elem = $(base.tabsElement[state]);
            elem.addClass("current");
            $("." + elem.attr("data-tabtar")).addClass("show");
        }

        return base;
    },

    getActiveTab: function () {
        var base = this;

        base.tabsElement.each(function (i, el) {
            if ($(el).hasClass("current")) {
                base.activeTab = $(el);
            }
        });

        return base;
    },

    addClickEvents: function () {
        var base = this;

        base.tabsElement.on("click", function (e) {
            var targetTab = $(this).attr("data-tabtar");

            e.preventDefault();
            base.activeTab.removeClass("current");
            base.activeTab = $(this);
            base.activeTab.addClass("current");

            base.tabElement.each(function (i, el) {
                el = $(el);
                el.removeClass("show");
                if (el.hasClass(targetTab)) {
                    el.addClass("show");
                }
            });
        });

        base.inputElements.find("label").on("click", function (e) {
            var $this = $(this),
                $input = $this.next("input");

            $input.focus();
        });

        return base;
    },

    initialize: function () {
        var base = this;

        base.findElements().setState().getActiveTab().addClickEvents();
    }
};

$(document).ready(function () {
    LoginModalController.initialize();
});

/*Login Page Js*/

/*Cart Page Js*/
/*Quantity Counter*/
$(document).ready(function () {

    var quantity = 0;
    $('.quantity-right-plus').click(function (e) {

        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantityabc').val());

        // If is not undefined

        $('#quantityabc').val(quantity + 1);


        // Increment

    });

    $('.quantity-left-minus').click(function (e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantityabc').val());

        // If is not undefined

        // Increment
        if (quantity > 1) {
            $('#quantityabc').val(quantity - 1);
        }
    });

});
$(document).ready(function () {

    var quantity = 0;
    $('.quantity-right-plus1').click(function (e) {

        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantityabc1').val());

        // If is not undefined

        $('#quantityabc1').val(quantity + 1);


        // Increment

    });

    $('.quantity-left-minus1').click(function (e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantityabc1').val());

        // If is not undefined

        // Increment
        if (quantity > 1) {
            $('#quantityabc1').val(quantity - 1);
        }
    });

});
$(document).ready(function () {

    var quantity = 0;
    $('.quantity-right-plus2').click(function (e) {

        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantityabc2').val());

        // If is not undefined

        $('#quantityabc2').val(quantity + 1);


        // Increment

    });

    $('.quantity-left-minus2').click(function (e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantityabc2').val());

        // If is not undefined

        // Increment
        if (quantity > 1) {
            $('#quantityabc2').val(quantity - 1);
        }
    });

});
/*Quantity Counter*/

/*Shipping Different Address*/
$(document).ready(function(){
    let mychkbx = document.getElementById('toggle-content');
    $('#mycheckbox').click(function(){
        if(this.checked) {
            mychkbx.style.display = 'block'
        } else {
            mychkbx.style.display = 'none'
        }
    })
});
/*Shipping Different Address*/

/*Different Payment*/
$(document).ready(function(){
    $('.abc').click(function(){
        var inputValue = $(this).attr("value");
        var targetBox = $("." + inputValue);
        $(".box").not(targetBox).hide();
        $(targetBox).show();
    });
});
/*Different Payment*/

/*Cart Page Js*/

/*Dashboard Page Js*/
function openTab(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
  }
  
  document.getElementById("defaultOpen").click();
/*Dashboard Page Js*/