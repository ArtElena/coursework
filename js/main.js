$(function(){
    $('.menu__btn').on('click', function(){
        $('.menu__list').toggleClass('menu__list--active');
    });

    $('.workers__slider').slick({
        arrows: false,
        dots: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint:1025,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint:769,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint:426,
                settings: {
                    slidesToShow: 1
                }
            },
        ]
    });
    $(document).on('click', '.aj__send', function(e){
        e.preventDefault();
        var er = false;
        if($('#contact_form input[name="name"]').val()==''){
            er= true;
            $('#contact_form input[name="name"]').addClass('error');
        }else{
            $('#contact_form input[name="name"]').removeClass('error');
        }
        if($('#contact_form input[name="phone"]').val()==''){
            er= true;
            $('#contact_form input[name="phone"]').addClass('error');
        }else{
            $('#contact_form input[name="phone"]').removeClass('error');
        }
        if($('#contact_form select[name="service"]').val()=='Оберіть послугу'){
            er= true;
            $('#contact_form select[name="service"]').addClass('error');
        }else{
            $('#contact_form select[name="service"]').removeClass('error');
        }
        if(!er){
            var data_form = $('#contact_form').serialize();
            console.log();
            $.ajax({
                url: 'http://localhost/kursova/include/ajax.php',
                data: data_form,
                async: false,
                cache: false,
                type: 'POST',
                success: function (data) {
                    $('#contact input').val('');
                    $('.response').html(data);
                },
                error: function (data) {
                    $('#contact input').val('');
                    $('.response').append('Виникла помилка!');
                }
            });
        }
    });
});