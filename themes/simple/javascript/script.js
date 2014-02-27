jQuery.noConflict();

(function($) {    
       $(document).ready(function() {

        /* removes text from search form on focus and replaces it on unfocus - if text is entered then it does not get replaced with default on unfocus */
        $('#SearchForm_SearchForm_action_results').val('L');
        var searchField = $('#SearchForm_SearchForm_Search');
        var default_value = searchField.val();
        searchField.focus(function() {
            $(this).addClass('active');
            if (searchField.val() == default_value) {
                searchField.val('');
            }
        });
        searchField.blur(function() {
            if (searchField.val() == '') {
                searchField.val(default_value);
            }
        });

        if (!$.browser.msie || ($.browser.msie && (parseInt($.browser.version, 10) > 8))) {

            var searchBarButton = $("span.search-dropdown-icon");
            var searchBar = $('div.search-bar');
            var menuButton = $("span.nav-open-button");
            var menu = $('.header .primary ul');
            var mobile = false;
            var changed = false;

            $('body').append('<div id="media-query-trigger"></div>');

            function menuWidthCheck() {
                var header_w = $('header .inner').width();
                var elements_w = menu.width() + $('.brand').width();

                if ((header_w < elements_w) || ($(window).width() <= 768)) {
                    $('body').addClass('tablet-nav');
                }
                else {
                    $('body').removeClass('tablet-nav');
                }

                mobile_old = mobile;
                if ($('#media-query-trigger').css('visibility') == 'hidden') {
                    mobile = false;
                }
                else {
                    mobile = true;
                }

                if (mobile_old != mobile) {
                    changed = true;
                }
                else {
                    changed = false;
                }
            }

            menuWidthCheck();

            $(window).resize(function() {
                menuWidthCheck();

                if (!mobile) {
                    menu.show();
                    searchBar.show();
                }
                else {
                    if (changed) {
                        menu.hide();
                        searchBar.hide();
                    }
                }
            });

            /* toggle navigation and search in mobile view */
            searchBarButton.click(function() {
                menu.slideUp();
                searchBar.slideToggle(200);
            });

            menuButton.click(function() {
                searchBar.slideUp();
                menu.slideToggle(200);
            });

        }


        $('.photocontainer').mouseenter(function() {
            $('.slideup, .animatedtitle', this).stop().animate({top: '0'}, 800, "easeOutCirc", function() {
                // Animation complete.
            });
            $('.triangle1, .triangle2', this).fadeOut('fast');

        }).mouseleave(function() {
            $('.slideup').stop().animate({top: '100%'}, 200);
            $('.animatedtitle').stop().animate({top: '-100%'}, 3000);
            $('.triangle1, .triangle2', this).fadeIn('slow');
        });

//scroll array
        function getPageScroll() {
            var xScroll, yScroll;
            if (self.pageYOffset) {
                yScroll = self.pageYOffset;
                xScroll = self.pageXOffset;
            } else if (document.documentElement && document.documentElement.scrollTop) {
                yScroll = document.documentElement.scrollTop;
                xScroll = document.documentElement.scrollLeft;
            } else if (document.body) {// all other Explorers
                yScroll = document.body.scrollTop;
                xScroll = document.body.scrollLeft;
            }
            return new Array(xScroll, yScroll);
        }

//after 250 pixel scroling down, animate flaoting menu

        $(window).scroll(function() {

            var windowH = 250;
            var scrollY = getPageScroll()[1];

            if (scrollY > windowH)
                $('.floatingmenu').stop().animate({top: '10'}, 800, "easeOutCirc");
            if (scrollY < windowH)
                $('.floatingmenu').stop().animate({top: '-50'}, 100);

        });

        $("#tabs").easytabs({
 panelContext: $(document)
        });
 
 

       });
}(jQuery));




