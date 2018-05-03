{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content main-content--text">
      {include 'file:chunks/breadcrumbs.tpl'}

      <h1>{$_modx->resource.pagetitle}</h1>

        {$_modx->runSnippet('!mSearch2', [
          'tplWrapper' => '@INLINE
            <div class="search-result">
              <div class="search-result-header">
                <div class="search-result-header__title">Найдено <span>{$weight}</span> позиции в результате поиска по запросу
                  "<span>Камера</span>"
                </div>
              </div>
              <ul class="search-result-list">{$output}</ul>
              <div class="pagination pagination--center">
                <ul id="mse2_pagination" class="pagination-list">
                  <li class="pagination-list__item">
                    <a class="pagination-list__link pagination-list__link--without-border" href="katalog">
                      <svg class="site-icon icon-heart" aria-hidden="true">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                            xlink:href="assets/img/svg/svg-symbols.svg#angle_left"></use>
                      </svg>
                    </a>
                  </li>
                  <li class="pagination-list__item"><a class="pagination-list__link" href="katalog">1</a></li>
                  <li class="pagination-list__item pagination-item__active"><a class="pagination-list__link">2</a>
                  </li>
                  <li class="pagination-list__item"><a class="pagination-list__link" href="katalog?page=3">3</a></li>
                  <li class="pagination-list__item"><a class="pagination-list__link" href="katalog?page=4">4</a></li>
                  <li class="pagination-list__item">
                    <a class="pagination-list__link pagination-list__link--without-border" href="katalog">
                      <svg class="site-icon icon-heart" aria-hidden="true">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink"
                            xlink:href="assets/img/svg/svg-symbols.svg#angle_right"></use>
                      </svg>
                    </a>
                  </li>
                </ul>
              </div>
            </div>',
          'tpl' => '@INLINE
            <li class="search-result-list__result-item">
              <a href="{$uri}" class="search-result-list__result-link">{$pagetitle}</a>
              <div class="search-result-breadcrumbs">
                Раздел: <span class="search-result-breadcrumbs__value">{$parent}</span>
              </div>
              <div class="search-result-list__result-desc">{$intro}</div>
            </li>'
        ])}
        {* <ul class="search-result-list">
          <li class="search-result-list__result-item">
            <a href="" class="search-result-list__result-link">Hikvision DS-2CD2412F-IW Ivideon</a>
            <div class="search-result-breadcrumbs">
              Раздел: <span class="search-result-breadcrumbs__value">IP-камеры видеонаблюдения</span>
            </div>
            <div class="search-result-list__result-desc"> Уход и заточка
              Hikvision DS-2CD2412F-IW Ivideon IP-<mark>камера</mark> Hikvision DS-2CD2412F-IW Ivideon с облачным сервисом
              видеонаблюдения Ivideon! IP-<mark>камера</mark> Hikvision DS-2CD2412F-IW оснащена ИК-фильтром, работающим в режиме
              День/Ночь: фильтр корректирует цветовую передачу дне ...
            </div>
          </li>
        </ul> *}
    </main>
    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}