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
    let tech_top = $('.tech_box').offset().top; 
    let trima_top = $('.trima_box').offset().top;
    let ddnb_top = $('.ddnb_box').offset().top;
    let achmt_top = $('.achmt_box').offset().top;
    let bsn_top = $('.bsn_box .cont').offset().top;
    let bsn_top2 = $('.market_box').offset().top;
    let bns_top3 = $('.bsnview_box').offset().top;
    let bns_top4 = $('.bsngo_box').offset().top;
    let ndh_top = $('.ndh_top').offset().top;
    let abcinfo_top = $('.abcinfo_box').offset().top;
    let ndhcont_top1 = $('.nodehome_cont1').offset().top;
    let ndhcont_top2 = $('.nodehome_cont2').offset().top;
    let ndweb_top1 = $('.ndweb_box1').offset().top;
    let ndweb_top2 = $('.ndweb_box2').offset().top;
    let gobsn_top = $('.gobsn_box').offset().top;
    let year_top = $('.abc_year').offset().top;
    let abcbot_top = $('.abc_bot').offset().top;
    let infoicon_top = $('.loc_map .bot').offset().top;

    $(window).scroll(function(){
        let s_top = $(window).scrollTop();
        let s_bot = $(window).scrollTop() + $(window).height();

        let sec1_o_top = $('#sec1').offset().top;
        let sec2_o_top = $('#sec2').offset().top;
        let sec3_o_top = $('#sec3').offset().top;
        let sec4_o_top = $('#sec4').offset().top;
        let sec5_o_top = $('#sec5').offset().top;
        let sec6_o_top = $('#sec6').offset().top;
        let sec7_o_top = $('#sec7').offset().top;
    
        let sec1_o_bot = $('#sec1').offset().top + $('#sec1').height();
        let sec2_o_bot = $('#sec2').offset().top + $('#sec2').height();
        let sec3_o_bot = $('#sec3').offset().top + $('#sec3').height();
        let sec4_o_bot = $('#sec4').offset().top + $('#sec4').height();
        let sec5_o_bot = $('#sec5').offset().top + $('#sec5').height();
        let sec6_o_bot = $('#sec6').offset().top + $('#sec6').height();
        let sec7_o_bot = $('#sec7').offset().top + $('#sec7').height();
        
        function  menu_chg(num) {
            $('.indi').removeClass('indi_active');
            $('.indi').eq(num).addClass('indi_active');
        }
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
            $('.indi').css({ background: '#222', opacity: '0.5'});
            $('.indi_active').css({ opacity: '1'});
            // $('.aside_txt').css({
            //     color: '#222',
            //     borderBottom: '1px solid #222'
            // });
            $('.menu_icon div').css({
                backgroundColor: '#37474F'
            });
        }
        else {
            $('.indi').css({ background: '#fff', opacity: '0.5'});
            $('.indi_active').css({ opacity: '1'});
            // $('.aside_txt').css({
            //     color: '#fff',
            //     borderBottom: '1px solid #fff'
            // });
            $('.menu_icon div').css({
                backgroundColor: '#fff'
            });
        }
        if( sec1_o_top - 400 <= s_top && s_top < sec1_o_bot) {
            menu_chg(0)
        }
        if( sec2_o_top - 400 <= s_top && s_top < sec2_o_bot) {
            menu_chg(1)
        }
        if( sec3_o_top - 400  <= s_top && s_top < sec3_o_bot) {
            menu_chg(2)
        }
        if( sec4_o_top - 400 <= s_top && s_top < sec4_o_bot) {
            menu_chg(3)
        }
        if( sec5_o_top - 400 <= s_top && s_top < sec5_o_bot) {
            menu_chg(4)
        }
        if( sec6_o_top - 400 <= s_top && s_top < sec6_o_bot) {
            menu_chg(5)
        }
        if( sec7_o_top - 400 <= s_top && s_top < sec7_o_bot) {
            menu_chg(6)
        }
        if( tech_top <= s_bot - 600 ) {
            for( let i = 0; i <= $('.ct_tech').length ; i++ ) {
                (function(tmp_i) {
                    setTimeout(function(){
                        $('.ct_tech').eq(tmp_i).addClass('ct_tech_move');
                    }, i * 250);
                })(i)
            }
        }

        if( trima_top <= s_bot - 600 ) {
            for( let i = 0; i <= $('.trm_icon_img').length ; i++ ) {
                (function(tmp_i) {
                    setTimeout(function(){
                        $('.trm_icon_img').eq(tmp_i).addClass('trm_icon_img_active');
                    }, i * 250);
                })(i)
            }
        }

        if( trima_top <= s_bot - 600 ) {
            $('.trm_bot').addClass('trm_bot_active')
        }
        if( ddnb_top <= s_bot - 400 ) {
            $('.ddnb_box .cont').css({
                transform: 'translateY(0px)',
                opacity: '1'
            })
        }
        if( achmt_top <= s_bot - 400 ) {
            for( let i = 0; i <= $('.dev_list').length ; i++ ) {
                (function(tmp_i) {
                    setTimeout(function(){
                        $('.dev_list').eq(tmp_i).addClass('dev_acitve');
                    }, i * 250);
                })(i)
            }
        }
        if( achmt_top <= s_bot - 1300 ) {
            $('.block_img').addClass('block_img_active');
        }
        if( bsn_top <= s_bot - 200 ) {
            $('.bsn_box .cont').css({
                transform: "translateY(0px)",
                opacity: '1'
            });
        }
        if( bsn_top2 <= s_bot - 200 ) {
            $('.market_box').css({
                transform: "translateY(0px)",
                opacity: '1'
            });
        }
        if( bns_top3 <= s_bot - 200 ) {
            $('.bsnview_box').css({
                transform: "translateY(0px)",
                opacity: '1'
            });
        }
        if( bns_top4 <= s_bot - 200 ) {
            $('.bsngo_box').css({
                transform: "translateY(0px)",
                opacity: '1'
            });
        }
        if( ndh_top <= s_bot - 400 ) {
            $('.ndh_center .box_left').css({
                left: '-100%',
                opacity: '1'
            });
            $('.ndh_center .box_right').css({
                right: '-100%',
                opacity: '1'
            });
            $('.ndh_center .mid').css({
                opacity: '1'
            })
        }
        if(abcinfo_top <= s_bot - 400) {
            $('.logo_img').addClass('abcinfo_active');
            $('.abcinfo_txt .title').addClass('abcinfo_active');
            $('.abcinfo_txt .info').addClass('abcinfo_active');
        }
        if(ndhcont_top1 <= s_bot - 400) {
            $('.nodehome_cont1 .nh_img, .nodehome_cont1 .cont').addClass('abcinfo_active');
        }
        if(ndhcont_top2 <= s_bot - 400) {
            $('.nodehome_cont2 .nh_img, .nodehome_cont2 .cont').addClass('abcinfo_active');
        }
        if(ndweb_top1 <= s_bot - 200) {
            $('.ndweb_box1 .left, .ndweb_box1 .right').addClass('abcinfo_active');
        }
        if(ndweb_top2 <= s_bot - 200) {
            $('.ndweb_box2 .left, .ndweb_box2 .right').addClass('abcinfo_active');
        }
        if(gobsn_top <= s_bot - 400) {
            for( let i = 0; i <= $('.bg_line').length ; i++ ) {
                (function(tmp_i) {
                    setTimeout(function(){
                        $('.bg_line').eq(tmp_i).addClass('abcinfo_active');
                    }, i * 250);
                    setTimeout(function(){
                        $('.gobsn_box .item').eq(tmp_i).addClass('abcinfo_active');
                    }, i * 250);
                })(i)
            }
        }
        if(year_top <= s_bot - 400) {
            for( let i = 0; i <= $('.year_line').length ; i++ ) {
                (function(tmp_i) {
                    setTimeout(function(){
                        $('.year_line').eq(tmp_i).addClass('abcinfo_active');
                    }, i * 700);
                })(i)
            }
        }
        if(abcbot_top <= s_bot) {
            $('.abc_bot .txt').css({
                transform: 'scale(1)',
                filter: 'blur(0px)',
                opacity: '1'
            })
        }
        if(infoicon_top <= s_bot + 200) {
            $('.abcinfo_icon').addClass('icon_rote');
        }


    });

    $(document).on('click','.page_bt, .indi, .minmenu_nav li a', function(){
        event.preventDefault();
        let href = $(this).attr('href');
        let o_top = $(href).offset().top;

        $('html, body').animate({
            scrollTop: o_top
        }, 250)
    });

});