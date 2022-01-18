$(function () {
    var lastScrollTop = 0,
        delta = 15;
    $(window).scroll(function (event) {
        var st = $(this).scrollTop();
        if (Math.abs(lastScrollTop - st) <= delta) return;
        if ((st > lastScrollTop) && (lastScrollTop > 0)) {
            $("#header").css("top", "-70px");
            $('.minmenu_pan').removeClass('minmenu_pan_tg');
            $('.line-middle').removeClass('line-middle_tg');
            $('.line-bottom').removeClass('line-bottom_tg');
            $('.line-top').removeClass('line-top_tg');

        } else {
            $("#header").css("top", "0px");
        }
        lastScrollTop = st;
    });
});

$(document).ready(function (){

    $('.downlode').on('click', function(){
        $('.down_pan').toggleClass('down_pan_view');
        $('.downlode svg').toggleClass('color_blue');
    });

    $('.prd_menu .icon').on('click', function(){
        $('.line-top').toggleClass('line-top_tg');
        $('.line-middle').toggleClass('line-middle_tg');
        $('.line-bottom').toggleClass('line-bottom_tg');
        $('.minmenu_pan').toggleClass('minmenu_pan_tg');
        $('.ndh_manu').toggleClass('ndh_menu_show');
    
    });

    $('.ft_site').on('click', function(){
        $('.ft_site_pan').toggleClass('ft_site_pan_view');
        $('.ft_site svg').toggleClass('svg_rote');
    });
        
    $('.min_menu').on('click', function(){
        $('.line-top').toggleClass('line-top_tg');
        $('.line-middle').toggleClass('line-middle_tg');
        $('.line-bottom').toggleClass('line-bottom_tg');
        $('.minmenu_pan').toggleClass('minmenu_pan_tg');

    })

    $( window ).scroll( function() {
        if ( $( this ).scrollTop() > 400 ) {
            $( '.fixedtop_icon' ).addClass('fixedtop_com');            
        } else {
            $( '.fixedtop_icon' ).removeClass('fixedtop_com');
        }
    } );

    $( '.fixedtop_icon' ).click( function() {
        $( 'html, body' ).animate( { scrollTop : 0 }, 200 );
        return false;
    } );

    ///slide

    $('.selet_R').click(function(){

        
        $('.selet_bt button').removeClass('selet_bt_ck')
        $(this).addClass('selet_bt_ck');


        $('.sec1_bg1').animate({
            left: '-100%'
        }, 500)
        $('.sec1_bg2').animate({
            left: '0'
        }, 500)

        setTimeout(function (){
            $('.sec1_bg1 .big_txt, .sec1_bg1 .s_txt, .sec1_bg1 .page_bt').removeClass('txt_move');
            $('.sec1_bg2 .big_txt, .sec1_bg2 .s_txt, .sec1_bg2 .page_bt').addClass('txt_move');
        }, 500)
        
    });

    $('.selet_L').click(function(){
        $('.selet_bt button').removeClass('selet_bt_ck')
        $(this).addClass('selet_bt_ck');


        $('.sec1_bg2').animate({
            left: '100%'
        }, 500)
        $('.sec1_bg1').animate({
            left: '0'
        }, 500)

        setTimeout(function (){
            $('.sec1_bg2 .big_txt, .sec1_bg2 .s_txt, .sec1_bg2 .page_bt').removeClass('txt_move');

    
            $('.sec1_bg1 .big_txt, .sec1_bg1 .s_txt, .sec1_bg1 .page_bt').addClass('txt_move');
        }, 500)

    });

    
    let interval;
    auto_slide();

    function auto_slide() {
        interval = setInterval(function(){
            $('.selet_L, .selet_R').not('.selet_bt_ck').trigger('click');
        }, 8000);
    }
    $('.selet_bt').hover(function(){
        clearInterval(interval)
    }, function(){
        auto_slide();
    });



});