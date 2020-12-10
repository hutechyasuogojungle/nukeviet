<!-- BEGIN: main  -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>




<div class="bxslider">
  <!-- BEGIN: loop -->
    <!-- BEGIN: type_image_link -->
    <a rel="nofollow" href="{DATA.link}" onclick="this.target='{DATA.target}'" title="{DATA.file_alt}"><img alt="{DATA.file_alt}" src="{DATA.file_image}" width="{DATA.file_width}"></a>
    <!-- END: type_image_link -->
    <!-- BEGIN: type_image -->
    <img alt="{DATA.file_alt}" src="{DATA.file_image}" width="{DATA.file_width}">
    <!-- END: type_image -->

<!-- END: loop -->
</div>




<script>
$('.bxslider').bxSlider({
  auto: true,
  controls: true,
  minSlides:5,
  maxSlides:7,
  autoControls: true,
  stopAutoOnClick: true,
  pager: true,
  slideWidth: 600
});
</script>

<!-- END: main -->
