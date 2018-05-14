<div id="msCart" class="basket-content">
  {if !count($products)}
    <h2 class="accent-color">Ваша корзина пока пуста</h2>
    <a href="{$_modx->makeUrl(18)}">Перейти к покупкам</a>
  {else}
    {foreach $products as $product}
      <div id="{$product.key}" class="basket-content__row">
        <div class="basket-content__first-block">
          <a href="{$product.uri}" class="basket-content__image">
            {if $product.thumb?}
              <img src="{$product.thumb}" alt="{$product.pagetitle}" class="prod-img">
            {else}
              <img src="assets/img/no_photo.jpg" alt="{$product.pagetitle}" class="prod-img">
            {/if}
          </a>
          <div class="basket-content__desc">
            <a href="{$product.uri}" class="basket-content__title product-block__product-title">{$product.pagetitle}</a>
          </div>
        </div>
        <div class="basket-content__second-block">
          <div class="basket-content__count">
            <form class="ms2_form basket-content__count-form" role="form" method="post">
              <input type="hidden" name="key" value="{$product.key}">
              <input type="number" class="basket-content__count-input" name="count" value="{$product.count}"
                  title="Количество">
              <label>шт.</label>
              <button class="ghost-el" type="submit" name="ms2_action" value="cart/change">Обновить
              </button>
            </form>
          </div>
          <div class="basket-content__prices">
            <div class="basket-content__now-price product-block__product-price">
              {$product.price}
              <span class="currency">&#8381;</span>
            </div>
            {if $product.old_price?}
              <sub class="basket-content__old-price product-block__product-price--old-price">{$product.old_price}</sub>
            {/if}
          </div>
          <div class="basket-content__actions">
            <form method="post" class="ms2_form">
              <input type="hidden" name="key" value="{$product.key}">
              <button class="button only-icon-button" type="submit" name="ms2_action" value="cart/remove">
                <svg class="site-icon icon-user" aria-hidden="true">
                  <use xlink:href="assets/img/svg/svg-symbols.svg#trash"></use>
                </svg>
              </button>
            </form>
          </div>
        </div>
      </div>
    {/foreach}

    <div class="basket-content-clear-basket">
      <form method="post" class="clear-basket-form">
        <button type="submit" name="ms2_action" value="cart/clean" class="button button-as-link clear">Очистить корзину</button>
      </form>
    </div>

    <div class="basket-result__row">
      <div class="result-block">
        <div class="basket-result-title">Итого без доставки:</div>
        <div class="basket-result-cost"><span class="ms2_total_cost">{$total.cost}</span> руб.</div>
      </div>
    </div>

    <a href="order.html" class="button button-confirm">Перейти к оформлению заказа</a>
  {/if}
</div>