function ApplyIEBehaviour(x) {
    $('input[type=text]:not(' + x + ',[readonly]),input[type=password]:not(' + x + ',[readonly])').on('input focusin', function (e) {
        if (!$(this).next().is('i') && browserCompatibility() && $(this).val() != '') {
            $(this).wrap(getWrapperDivElement()).after(getIconElement($(this).attr('type')));
            $(this).focus();
        }
        if ($(this).val() == '') {
            if ($(this).parent().is(".xico")) {
                $(this).unwrap('.xico');
                $(this).next().remove();
            }
        }
    });
}
function getWrapperDivElement() {
    var WrapperXIcon = $('<div>', {
        css: {
            'position': 'relative',
            'display':'flex',
            'align-items': 'center'
        },
        addClass: 'xico'
    });
    return WrapperXIcon;
}
function getIconElement(Type) {
    var $XIcon = $('<i>', {
        css: {
            'position': 'absolute',
            'right': '5px',
            'cursor': 'pointer',
            'font-size': '.7rem'
        }
    });
    if (Type != 'password')
        $XIcon.addClass('fa fa-times-circle-o');
    else
        $XIcon.addClass('fa fa-eye');

    return $XIcon.on('click', ClearDataClickXIcon);
}
function ClearDataClickXIcon() {
    if ($(this).prev().is('input') && !$(this).hasClass('fa-eye') && !$(this).hasClass('fa-eye-slash')) {
        $(this).prev().val('');
        $(this).unwrap('.xico');
        $(this).remove();
    }
    else {
        var Toggle = $(this).prev().attr('type') == 'password' ? true : false;
        if (Toggle)
            $(this).removeClass('fa fa-eye').addClass('fa fa-eye-slash').prev().attr('type', 'text');
        else
            $(this).removeClass('fa fa-eye-slash').addClass('fa fa-eye').prev().attr('type', 'password');

    }
}
function browserCompatibility() {
    var userAgentString = navigator.userAgent;
    var chromeAgent = userAgentString.indexOf("Chrome") > -1;
    var isCompatible = false;
    if (chromeAgent)
        isCompatible = true;
    return isCompatible;
}