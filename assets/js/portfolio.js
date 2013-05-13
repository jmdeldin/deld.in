$(document).ready(function () {
    var figures = $('.figures');
    $('figure > a').colorbox({
        rel: 'figures',
        title: function () {
            var fig = this.parentNode;
            return fig.querySelector('figcaption').innerHTML;
        },
        current: '',
        width: 800,
        onOpen: function () {
            figures.removeClass('thumbs');
        },
        onCleanup: function () {
            figures.addClass('thumbs');
        }
    });
});
