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
          {$_modx->runSnippet('!msProducts', [
            'parents' => 18,
            'limit' => 4,
            'includeThumbs' => 'small,middle',
            'tpl' => '@FILE chunks/miniShop2/productCard.tpl',
            'where' => '{"Data.new":1}'
          ])}
        </div>
      </div>

      <div class="heading-block">
        <div class="heading-block__header-line">
          <div class="heading-block__title">Акции</div>
        </div>
        <div class="heading-block__content products-line">
          {$_modx->runSnippet('!msProducts', [
            'parents' => 18,
            'limit' => 4,
            'includeThumbs' => 'small,middle',
            'tpl' => '@FILE chunks/miniShop2/productCard.tpl',
            'where' => '{"Data.popular":1}'
          ])}
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