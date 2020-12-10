<!-- BEGIN: main  -->


<!-- BEGIN: loop -->
<link rel ="StyleSheet" href='{NV_BASE_SITEURL}themes/{TEMPLATE}/css/jquery.bxslider.css'>


<div class="bxslider">
    <!-- BEGIN: type_image_link -->
    <a rel="nofollow" href="{DATA.link}" onclick="this.target='{DATA.target}'" title="{DATA.file_alt}"><img alt="{DATA.file_alt}" src="{DATA.file_image}" width="{DATA.file_width}"></a>
    <!-- END: type_image_link -->
    <!-- BEGIN: type_image -->
    <img alt="{DATA.file_alt}" src="{DATA.file_image}" width="{DATA.file_width}">
    <!-- END: type_image -->
    <!-- BEGIN: bannerhtml -->
    <div class="clearfix text-left">
        {DATA.bannerhtml}
    </div>
    <!-- END: bannerhtml -->
</div>


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
<!-- END: loop -->


<scr

<!-- END: main -->
