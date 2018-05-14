<div class="product-block circle-blob {if $new?}new{/if}{if $favorite?}hot{/if}{if $popular?}sale{/if}"
  data-state="{if $new?}NEW{/if}{if $favorite}HOT{/if}{if $popular?}SALE{/if}">

  <a href="{$uri}" class="product-block__product-image">
    {if $thumb?}
      <figure class="img-placeholder img-placeholder--product-block" data-src="{$middle}">
        <img src="{$small}" alt="{$pagetitle}" class="img-small">
      </figure>
    {else}
      <figure class="img-placeholder img-placeholder--product-block">
        <img src="assets/img/no_photo.jpg" alt="{$pagetitle}" class="loaded">
      </figure>
    {/if}
  </a>

  <a href="detail.html" class="product-block__product-title">{$pagetitle}</a>

  <div class="product-prices">
    <div class="product-block__product-price">
      {$price} <span class="currency">&#8381;</span>
    </div>

    {if $old_price?}
      <div class="product-block__product-price product-block__product-price--old-price">
        {$old_price} <span class="currency">&#8381;</span>
      </div>
    {/if}
  </div>

  <div class="commerce-buttons">
    <form method="post" class="product-block__cart-button ms2_form">
      <input type="hidden" name="id" value="{$id}">
      <input type="hidden" name="count" value="1">
      <input type="hidden" name="options" value="[]">
      <button type="submit" name="ms2_action" value="cart/add"
          class="button" title="положить в корзину">
        <svg class="site-icon icon-user" aria-hidden="true">
          <use xlink:href="assets/img/svg/svg-symbols.svg#shopping_cart"></use>
        </svg>
        <span class="button__text">в корзину</span>
      </button>
    </form>
  </div>
</div>