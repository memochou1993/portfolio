    <script src="{{ asset('public/js/app.js') }}"></script>
    <script src="{{ asset('public/js/jquery-ui.min.js') }}"></script>   
    <script src="{{ asset('public/js/fontawesome-all.min.js') }}"></script>
    <script src="{{ asset('public/vendor/ckeditor/ckeditor/ckeditor.js') }}"></script>
    <script src="{{ asset('public/vendor/ckeditor/ckeditor/adapters/jquery.js') }}"></script>
    <script>
        function split(value) {
            return value.split(',');
        }
        function extractLast(term) {
            return split(term).pop();
        }
        
        $(document).ready(function () {
            $('#scroll-to-top').click(function(){
                $('html, body').animate({scrollTop : 0}, 1200);
                return false;
            });

            $(window).scroll(function(){
                if ($(this).scrollTop() > 200) {
                    $('#scroll-to-top').fadeIn();
                } else {
                    $('#scroll-to-top').fadeOut();
                }
            });

            setTimeout(function () {
                $('#loading').fadeOut();
                $('.card').removeAttr('hidden');
            }, 200);

            $('#tag').autocomplete({
                minLength: 1,
                delay: 0,
                source: function (request, response) {
                    $.ajax({
                        url: '{{ route("workTag.search") }}',
                        dataType: 'json',
                        data: {
                            term: extractLast(request.term)
                        },
                        success: function (data) {
                            response(data);
                        },
                    });
                },
                select: function (event, ui) {
                    const terms = split(this.value);
                    terms.pop();
                    terms.push(ui.item.value);
                    this.value = terms.join(',');
                    return false;
                },
            });

            $('textarea').ckeditor();
            
            $('[data-toggle="tooltip"]').tooltip({
                position: {
                    my: 'right center',
                    at: 'left-5 center',
                }
            });

            $('#clickToShow').click(function() {
                $(this).hide();
            })
        });
    </script>