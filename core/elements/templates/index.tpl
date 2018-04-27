{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content">
      {include 'file:chunks/mainCarousel.tpl'}

      <div class="futures-block">
        <div class="future-item">
          <a href="#" class="future-item__title accent-color">
            <svg class="site-icon icon-heart" aria-hidden="true">
              <use xlink:href="assets/img/svg/svg-symbols.svg#credit_card"></use>
            </svg>
            Продажа
          </a>
          <div class="future-item__desc">Широкий ассортимент оборудования</div>
        </div>
        <div class="future-item">
          <a href="#" class="future-item__title accent-color4">
            <svg class="site-icon icon-heart" aria-hidden="true">
              <use xlink:href="assets/img/svg/svg-symbols.svg#cogs"></use>
            </svg>
            Замена
          </a>
          <div class="future-item__desc">Качественная замена оборудования</div>
        </div>
        <div class="future-item">
          <a href="#" class="future-item__title accent-color2">
            <svg class="site-icon icon-heart" aria-hidden="true">
              <use xlink:href="assets/img/svg/svg-symbols.svg#thumbs_up_alt"></use>
            </svg>
            Установка
          </a>
          <div class="future-item__desc">Высококлассный монтаж систем</div>
        </div>
      </div>

      <div class="heading-block">
        <div class="heading-block__header-line">
          <div class="heading-block__title">Новинки</div>
        </div>
        <div class="heading-block__content products-line">
          <div class="product-block circle-blob new" data-state="NEW">
            <div class="product-block__add-settings">
              <div class="comparison comparison-default" data-id="19" data-list="default">
                <button class="button only-icon-button small-button  comparison-add comparison-link"
                    data-text="Обновляю список..." title="Добавить к сравнению">
                  <svg class="site-icon icon-user" aria-hidden="true">
                    <use xlink:href="assets/img/svg/svg-symbols.svg#compare"></use>
                  </svg>
                </button>
                <!--<a href="#" class="button only-icon-button comparison-remove comparison-link" data-text="Обновляю список...">-->
                <!--<svg class="site-icon icon-user" aria-hidden="true">-->
                <!--<use xlink:href="assets/img/svg/svg-symbols.svg#compare"></use>-->
                <!--</svg>-->
                <!--</a href="#">-->
                <!--<a href="#" class="comparison-go">Сравнить</a>-->
                <!--<span class="comparison-total">0</span>-->
              </div>
              <div class="favorites favorites-default" data-id="5">
                <button class="button only-icon-button small-button favorites-add favorites-link"
                    data-text="секунду..." title="Добавить в избранное">
                  <svg class="site-icon icon-user" aria-hidden="true">
                    <use xlink:href="assets/img/svg/svg-symbols.svg#heart"></use>
                  </svg>
                </button>
                <!--<a href="#" class="favorites-remove favorites-link" data-text="секунду...">Убрать из избранного</a>-->
                <!--<a href="favorites.html" class="favorites-go">К списку</a>-->
                <!--<span class="favorites-total">0</span>-->
              </div>
            </div>
            <a href="detail.html" class="product-block__product-image">
              <figure class="img-placeholder img-placeholder--product-block" data-src="assets/images/products/product1.jpg">
                <img src="assets/images/products/product_small.jpg" alt="product" class="img-small">
              </figure>
            </a>
            <a href="detail.html" class="product-block__product-title">HiWatch HD (1280x720)</a>
            <div class="product-prices">
              <div class="product-block__product-price">
                15 380 <span class="currency">&#8381;</span>
              </div>
              <div class="product-block__product-price product-block__product-price--old-price">
                20 240 <span class="currency">&#8381;</span>
              </div>
            </div>
            <div class="commerce-buttons">
              <form method="get" class="product-block__cart-button ms2_form">
                <input type="hidden" name="id" value="162">
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
              <form method="get" class="product-block__fast-order-button ms2_form">
                <button type="submit" name="ms2_action" value="cart/add"
                    class="button only-icon-button" title="Быстрая покупка">
                  <svg class="site-icon icon-user" aria-hidden="true">
                    <use xlink:href="assets/img/svg/svg-symbols.svg#bolt"></use>
                  </svg>
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="heading-block">
        <div class="heading-block__header-line">
          <div class="heading-block__title">Акции</div>
        </div>
        <div class="heading-block__content products-line">
          <div class="product-block circle-blob sale" data-state="SALE">
            <div class="product-block__add-settings">
              <div class="comparison comparison-default" data-id="19" data-list="default">
                <button class="button only-icon-button small-button  comparison-add comparison-link"
                    data-text="Обновляю список..." title="Добавить к сравнению">
                  <svg class="site-icon icon-user" aria-hidden="true">
                    <use xlink:href="assets/img/svg/svg-symbols.svg#compare"></use>
                  </svg>
                </button>
                <!--<a href="#" class="button only-icon-button comparison-remove comparison-link" data-text="Обновляю список...">-->
                <!--<svg class="site-icon icon-user" aria-hidden="true">-->
                <!--<use xlink:href="assets/img/svg/svg-symbols.svg#compare"></use>-->
                <!--</svg>-->
                <!--</a href="#">-->
                <!--<a href="#" class="comparison-go">Сравнить</a>-->
                <!--<span class="comparison-total">0</span>-->
              </div>
              <div class="favorites favorites-default" data-id="5">
                <button class="button only-icon-button small-button favorites-add favorites-link"
                    data-text="секунду..." title="Добавить в избранное">
                  <svg class="site-icon icon-user" aria-hidden="true">
                    <use xlink:href="assets/img/svg/svg-symbols.svg#heart"></use>
                  </svg>
                </button>
                <!--<a href="#" class="favorites-remove favorites-link" data-text="секунду...">Убрать из избранного</a>-->
                <!--<a href="favorites.html" class="favorites-go">К списку</a>-->
                <!--<span class="favorites-total">0</span>-->
              </div>
            </div>
            <a href="detail.html" class="product-block__product-image">
              <figure class="img-placeholder img-placeholder--product-block" data-src="assets/images/products/product1.jpg">
                <img src="assets/images/products/product_small.jpg" alt="product" class="img-small">
              </figure>
            </a>
            <a href="detail.html" class="product-block__product-title">HiWatch HD (1280x720)</a>
            <div class="product-prices">
              <div class="product-block__product-price">
                15 380 <span class="currency">&#8381;</span>
              </div>
              <div class="product-block__product-price product-block__product-price--old-price">
                20 240 <span class="currency">&#8381;</span>
              </div>
            </div>
            <div class="commerce-buttons">
              <form method="get" class="product-block__cart-button ms2_form">
                <input type="hidden" name="id" value="162">
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
              <form method="get" class="product-block__fast-order-button ms2_form">
                <button type="submit" name="ms2_action" value="cart/add"
                    class="button only-icon-button" title="Быстрая покупка">
                  <svg class="site-icon icon-user" aria-hidden="true">
                    <use xlink:href="assets/img/svg/svg-symbols.svg#bolt"></use>
                  </svg>
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>

      {$_modx->runSnippet('!BannerY', [
        'positions' => '1',
        'tpl' => '@INLINE
                    <a href="{$_modx->config.bannery_click}/{$adposition}" class="full-width-banner">
                      <img src="{$image}" alt="banner" class="full-width-banner__banner-img">
                    </a>'
      ])}
    </main>

    {include 'file:chunks/sidebar.tpl'}
  </div>

  <div class="heading-block container">
    <div class="heading-block__header-line">
      <div class="heading-block__title">Наши клиенты</div>
    </div>
    {include 'file:chunks/ourClientsCarousel.tpl'}
  </div>
{/block}