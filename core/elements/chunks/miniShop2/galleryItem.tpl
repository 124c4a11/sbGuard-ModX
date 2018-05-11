{$_modx->setPlaceholder('og_image',$files[0]['og'])}

{foreach $files as $file}
  <figure class="product-slider__item">
    <img class="product-slider__item-img"
      data-big-image="{$file.big}"
      data-middle-image="{$file.middle}"
      data-size="{$file.properties.width}x{$file.properties.height}"
      src="{$file.crop}" alt="banner">
  </figure>
{/foreach}