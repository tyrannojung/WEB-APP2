// $(function () {
//     var lastScrollTop = 0,
//         delta = 15;
//     $(window).scroll(function (event) {
//         var st = $(this).scrollTop();
//         if (Math.abs(lastScrollTop - st) <= delta) return;
//         if ((st > lastScrollTop) && (lastScrollTop > 0)) {
//             $("#header").css("top", "-70px");
//             $('.minmenu_pan').removeClass('minmenu_pan_tg');
//             $('.line-middle').removeClass('line-middle_tg');
//             $('.line-bottom').removeClass('line-bottom_tg');
//             $('.line-top').removeClass('line-top_tg');

//         } else {
//             $("#header").css("top", "0px");
//         }
//         lastScrollTop = st;
//     });
// });


$(document).ready(function(){
  
    $(document).on('click','.fixedtop_icon, .ndh_item .item, .minmenu_nav li a', function(){
        event.preventDefault();
        let href = $(this).attr('href');
        let o_top = $(href).offset().top;

        $('html, body').animate({
            scrollTop: o_top
        }, 300)
    });

    setTimeout(function(){
        for( let i = 0; i <= $('.ndh_item .item').length ; i++ ) {
            (function(tmp_i) {
                setTimeout(function(){
                    $('.ndh_item .item').eq(tmp_i).addClass('item_active');
                }, i * 250);
            })(i)
        }
    }, 1000);

    let sec2_o_top = $('.sec2').offset().top;

    $(window).scroll(function(){
        let s_top = $(window).scrollTop();
        let s_bot = $(window).scrollTop() + $(window).height();
        if(s_top < sec2_o_top) {
            $('.header').css({background: 'rgba(0,0,0,0.5)', borderBottom: 'none'})
            $('.menu li').css({
                color: '#fff'
            })
            $('.logo img').attr('src', '/abc/img/logo_w.svg');
        } 
        if(s_top >= sec2_o_top - 120 ) {
            $('.header').css({background: 'rgba(255,255,255,1)', borderBottom: '1px solid #ddd'});
            $('.menu li').css({
                color: '#000'
            })
            $('.logo img').attr('src', '/abc/img/logo.svg');
        } 
        if(s_top > 450) {
            $('.menu_icon div').css({
                backgroundColor: '#37474F'
            });
        }
        else {
            $('.menu_icon div').css({
                backgroundColor: '#fff'
            });
        }

        


    });

});
