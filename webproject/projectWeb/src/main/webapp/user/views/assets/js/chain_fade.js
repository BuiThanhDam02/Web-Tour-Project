/*!
 * jQuery ChainFade; version: 1.0
 * 2014 - Gonzalo Castillo
 */
(function($) {
    $.fn.chainFade = function(options, callback) {
        var defaults = {
                startAt: 0,
                interval: 300,
                speed: 700,
                fx: 'fade',
                distance: 50,
                direction: 'forward',
                toThe: 'top',
                fixedHeight: false,
                messages: false,
                queue: true,
                ease: 'swing',
                after: function() {}
            },
            settings = $.extend(defaults, options);
        if (settings.messages === true) {
            console.log('--- Chain fade start ---');
            console.log('Selected options:');
            for (var opt in settings) {
                console.log('>' + opt + ': ' + settings[opt]);
            }
        }
        if (settings.fixedHeight === true) {
            var max_h = 0;
            this.each(function() {
                if ($(this).height() > max_h) {
                    max_h = $(this).height();
                }
            });
            $(this).height(max_h);
        }
        var getCss = function($elem, prop) {
            var wasVisible = $elem.css('display') !== 'none';
            try {
                return $elem.hide().css(prop);
            } finally {
                if (wasVisible) $elem.show();
            }
        };
        var arr_pos = ['top', 'bottom', 'left', 'right'],
            pos = {
                toThe: null,
                value: 0
            };
        switch (settings.fx) {
            case 'fade':
                var items = this.length,
                    count = 0;
                return this.each(function(i, el) {
                    for (var i = 0; i < arr_pos.length; i++) {
                        var v = getCss($(this), arr_pos[i]);
                        if (v !== 'auto') {
                            pos['toThe'] = arr_pos[i];
                            pos['value'] = v.slice(0, -2);
                            break;
                        }
                    };
                    if (pos['toThe'] == null) {
                        pos['toThe'] = settings.toThe;
                    }
                    var p = getCss($(this), 'position');
                    if (p === 'static') {
                        p = 'relative';
                    }
                    var css_options = {};
                    css_options['position'] = p;
                    css_options['opacity'] = 0;
                    css_options['display'] = 'block';
                    if (settings.direction === 'forward') {
                        css_options[pos.toThe] = (parseInt(pos['value']) + parseInt(settings.distance)) + 'px';
                    } else {
                        css_options[pos.toThe] = (parseInt(pos['value']) - parseInt(settings.distance)) + 'px';
                    }
                    $(this).css(css_options);
                    var anim_options = {};
                    anim_options['opacity'] = 1;
                    anim_options[pos.toThe] = pos['value'] + 'px';
                    $(this).stop(true, false).delay(settings.startAt).animate(anim_options, {
                        duration: settings.speed,
                        easing: settings.ease,
                        queue: settings.queue,
                        complete: function() {
                            count += 1;
                            if (count === items) {
                                settings.after();
                            }
                        }
                    });
                    settings.startAt += settings.interval;
                });
                break;
        }
    };
}(jQuery));