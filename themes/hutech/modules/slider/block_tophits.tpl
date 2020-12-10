<!-- BEGIN: main -->


<link rel ="StyleSheet" href='{NV_BASE_SITEURL}themes/{TEMPLATE}/css/jquery.bxslider.css'>
<ul class="bxslider">
    <!-- BEGIN: newloop -->
    <li class="item">
        <!-- BEGIN: imgblock -->
        <a title="{blocknews.title}" href="{blocknews.link}" {blocknews.target_blank}><img src="{blocknews.imgurl}" class="img"/></a>
        <!-- END: imgblock -->
    </li>
    <!-- END: newloop -->
</ul>



<script src='{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jquery.bxslider.min.js'></script>


<script>
$('.bxslider').bxSlider({
  auto: true,
  controls: true,
  minSlides:4,
  maxSlides:7,
  autoControls: true,
  stopAutoOnClick: true,
  pager: true,
  slideWidth: 300
});
</script>

<!-- END: main -->
