<!-- BEGIN: main -->
<div class="owl-carousel owl-theme">
    <div class="item">
        <h4>1</h4>
    </div>
    <div class="item">
        <h4>2</h4>
    </div>
    <div class="item">
        <h4>3</h4>
    </div>
    <div class="item">
        <h4>4</h4>
    </div>
    <div class="item">
        <h4>5</h4>
    </div>
    <div class="item">
        <h4>6</h4>
    </div>
    <div class="item">
        <h4>7</h4>
    </div>
    <div class="item">
        <h4>8</h4>
    </div>
    <div class="item">
        <h4>9</h4>
    </div>
    <div class="item">
        <h4>10</h4>
    </div>
    <div class="item">
        <h4>11</h4>
    </div>
    <div class="item">
        <h4>12</h4>
    </div>
</div>

<ul class="owl-carousel owl-theme block_tophits list-none list-items">
    <!-- BEGIN: newloop -->
    <li class="item clearfix">
        <!-- BEGIN: imgblock -->
        <a title="{blocknews.title}" href="{blocknews.link}" {blocknews.target_blank}><img src="{blocknews.imgurl}"
                alt="{blocknews.title}" width="{blocknews.width}" class="img-thumbnail pull-left mr-1" /></a>
        <!-- END: imgblock -->
        <a {TITLE} class="show" href="{blocknews.link}" {blocknews.target_blank}
            data-content="{blocknews.hometext_clean}" data-img="{blocknews.imgurl}"
            data-rel="block_news_tooltip">{blocknews.title}</a>
    </li>
    <!-- END: newloop -->
</ul>
<!-- BEGIN: tooltip -->
<script type="text/javascript">
    $(document).ready(function () {
        $("[data-rel='block_news_tooltip'][data-content!='']").tooltip({
            placement: "{TOOLTIP_POSITION}",
            html: true,
            title: function () { return ($(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />') + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>'; }
        });
    });
</script>
<!-- END: tooltip -->
<script>
    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    })
</script>
<!-- END: main -->