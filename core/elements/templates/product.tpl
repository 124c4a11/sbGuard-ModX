{extends 'file:templates/layout.tpl'}

{block 'microdata'}
  <meta property="og:site_name" content="{$_modx->config.site_name}">
  <meta property="og:type" content="article">
  <meta property="og:title" content="{$_modx->resource.logtitle ?: $_modx->resource.pagetitle}">
  <meta property="og:description" content="{$_modx->resource.description}">
  <meta property="og:url" content="{$_modx->makeUrl($_modx->resource.id, '', '', 'full')}">
  <meta property="og:image" content="http://{$_modx->config.http_host}[[+og_image]]">
{/block}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content main-content--text">
      {include 'file:chunks/breadcrumbs.tpl'}

      {* {$_modx->resource|print} *}

      <div class="product-detail-block">
        <div class="product-detail-block__photo-wrapper">
          <figure class="product-detail-block__photo__main-foto">
            {if $thumb?}
              <img class="product-detail-block__photo__main-foto-img" src="{$_modx->resource.thumb}"
                alt="{$_modx->resource.pagetitle}" data-index="0">
            {else}
              <img class="product-detail-block__photo__main-foto-img" src="assets/img/no_photo.jpg"
                alt="no-photo" data-index="0">
            {/if}
          </figure>
          <div class="product-slider my-gallery">
            {$_modx->runSnippet('!msGallery', [
              'tpl' => '@FILE chunks/miniShop2/galleryItem.tpl'
            ])}
          </div>
        </div>

        <div class="product-detail-block__desc-wrapper">
          <h1 class="product-block__product-title product-block__product-title--detail">{$_modx->resource.pagetitle}</h1>
          <div class="product-detail-block__article">Артикул: <span class="product-detail-block__article__value">{$_modx->resource.article}</span>
          </div>
          <p class="product-detail-block__desc">{$_modx->resource.description}</p>
          <div class="product-detail-block__product-prices">
            <span class="product-detail-block__price-title">Цена: </span>
            <div class="product-block__product-price product-block__product-price--detail">
              {$_modx->resource.price} <span class="currency">&#8381;</span>
            </div>

            {if $_modx->resource.old_price?}
              <div class="product-block__product-price product-block__product-price--old-price product-block__product-price--detail">
                {$_modx->resource.old_price} <span class="currency">&#8381;</span>
              </div>
            {/if}
          </div>
          <div class="product-detail-block__quantity">
            <label for="quantity" class="quantity-label">Количество:</label>
            <input type="number" id="quantity" class="quantity-input" maxlength="2" value="1" min="1" max="100">
          </div>
          <div class="product-detail-block__to-buy">
            <div class="commerce-buttons">
              <form method="post" class="product-block__cart-button ms2_form">
                <input type="hidden" name="id" value="{$_modx->resource.id}">
                <input type="hidden" name="count" value="1">
                <input type="hidden" name="options" value="[]">
                <button type="submit" name="ms2_action" value="cart/add" class="button" title="положить в корзину">
                  <svg class="site-icon icon-user" aria-hidden="true">
                    <use xlink:href="assets/img/svg/svg-symbols.svg#shopping_cart"></use>
                  </svg>
                  <span class="button__text button__text--as-link">В корзину</span>
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="product-detail-addon">
        <div class="tabs">
          <input id="tab1" type="radio" name="tabs" checked>
          <label for="tab1" title="Описание товара">
            <svg class="site-icon icon-user" aria-hidden="true">
                    <use xlink:href="assets/img/svg/svg-symbols.svg#reorder"></use>
            </svg>
            <span>Описание</span>
          </label>

          <input id="tab2" type="radio" name="tabs">
          <label for="tab2" title="Характеристики">
            <svg class="site-icon icon-user" aria-hidden="true">
              <use xlink:href="assets/img/svg/svg-symbols.svg#cogs"></use>
            </svg>
            <span>Характеристики</span>
          </label>

          <input id="tab3" type="radio" name="tabs">
          <label for="tab3" title="Отзывы покупателей">
            <svg class="site-icon icon-user" aria-hidden="true">
              <use xlink:href="assets/img/svg/svg-symbols.svg#comment"></use>
            </svg>
            <span>Отзывы покупателей</span>
          </label>

          <input id="tab4" type="radio" name="tabs">
          <label for="tab4" title="CSS3">
            <svg class="site-icon icon-user" aria-hidden="true">
              <use xlink:href="assets/img/svg/svg-symbols.svg#ul"></use>
            </svg>
            <span>Документация и ПО</span>
          </label>

          <section class="tabs-content" id="content1">
            <p>
              WordPress — система управления содержимым сайта с открытым исходным кодом, распространяемая под
              GNU GPL. Написана на PHP, в качестве базы данных использует MySQL.
            </p>
            <p>
              Сфера применения — от блогов до достаточно сложных новостных ресурсов и интернет-магазинов.
              Встроенная система «тем» и «плагинов» вместе с удачной архитектурой позволяет конструировать
              практически любые проекты. WordPress выпущен под лицензией GPL версии 2.
            </p>
          </section>
          <section class="tabs-content" id="content2">
            <p>Товарищи! рамки и место обучения кадров <em>обеспечивает</em> широкому <strong>кругу</strong>
              (специалистов)
              участие в формировании
              систем массового участия. Задача организации, в особенности же консультация с широким активом
              позволяет
              оценить значение новых предложений. Разнообразный и <b>богатый</b> опыт постоянный
              количественный рост и
              сфера
              нашей активности способствует подготовки и реализации форм развития. Разнообразный и богатый
              опыт
              <a href="#">консультация</a> с широким <a>активом</a> позволяет <a
                              href="http://sd.ru">оценить</a> значение модели развития.</p>

            <ul class="ul-list">
              <li>1item</li>
              <li>
                <ul>
                  <li>1item</li>
                  <li>2item</li>
                  <li>3item</li>
                </ul>
              </li>
              <li>3item</li>
              <li>4item</li>
              <li>5item</li>
            </ul>
            <ol class="ol-list">
              <li>1item</li>
              <li>
                <ul>
                  <li>1item</li>
                  <li>2item</li>
                  <li>3item</li>
                </ul>
              </li>
              <li>3item</li>
              <li>4item</li>
              <li>5item</li>
            </ol>
            <h2>Заголовок второго уровня</h2>
            <p>Идейные соображения высшего порядка, а также постоянное информационно-пропагандистское
              обеспечение нашей
              деятельности представляет собой интересный эксперимент проверки направлений прогрессивного
              развития.
              Разнообразный и богатый опыт начало повседневной работы по формированию позиции влечет за собой
              процесс
              внедрения и модернизации существенных финансовых и административных условий.</p>
            <h3>Заголовок третьего уровня</h3>
            <table>
              <caption>Таблица с данными</caption>
              <tr>
                <th>1item</th>
                <th>2item</th>
                <th>3item</th>
                <th>3item</th>
              </tr>
              <tr>
                <td>1item</td>
                <td>2item</td>
                <td>3item</td>
                <td>3item</td>
              </tr>
            </table>
            <h4>Заголовок четвёртого уровня</h4>
            <p>Задача организации, в особенности же новая модель организационной деятельности играет важную роль
              в
              формировании позиций, занимаемых участниками в отношении поставленных задач. Идейные соображения
              высшего
              порядка, а также реализация намеченных плановых заданий требуют от нас анализа системы обучения
              кадров,
              соответствует насущным потребностям. Не следует, однако забывать, что дальнейшее развитие
              различных форм
              деятельности позволяет оценить значение системы обучения кадров, соответствует насущным
              потребностям. Задача
              организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей
              деятельности
              обеспечивает широкому кругу (специалистов) участие в формировании модели развития.</p>
            <img src="assets/img/-text-big.png" alt=""/>
            <hr>
            <h5>Заголовок пятого уровня</h5>
            <div class="clearfix">
              <img src="assets/img/-text.png" class="img_l" alt=""/>
              <p>Задача организации, в особенности же новая модель организационной деятельности играет важную
                      роль в
                      формировании позиций, занимаемых участниками в отношении поставленных задач. Идейные
                      соображения высшего
                      порядка, а также реализация намеченных плановых заданий требуют от нас анализа системы
                      обучения кадров,
                      соответствует насущным потребностям. Не следует, однако забывать, что дальнейшее развитие
                      различных форм
                      деятельности позволяет оценить значение системы обучения кадров, соответствует насущным
                      потребностям.
                      Задача
                      организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей
                      деятельности
                      обеспечивает широкому кругу (специалистов) участие в формировании модели развития.</p>
            </div>
            <hr>
            <h6>Заголовок шестого уровня</h6>
            <div class="clearfix">
              <img src="assets/img/-text.png" class="img_r" alt=""/>
              <p>Задача организации, в особенности же новая модель организационной деятельности играет важную
                роль в
                формировании позиций, занимаемых участниками в отношении поставленных задач. Идейные
                соображения высшего
                порядка, а также реализация намеченных плановых заданий требуют от нас анализа системы
                обучения кадров,
                соответствует насущным потребностям. Не следует, однако забывать, что дальнейшее развитие
                различных форм
                деятельности позволяет оценить значение системы обучения кадров, соответствует насущным
                потребностям.
                Задача
                организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей
                деятельности
                обеспечивает широкому кругу (специалистов) участие в формировании модели развития.</p>
            </div>
            <hr>
            <h5>Заголовок пятого уровня</h5>
            <figure class="img_l clearfix">
              <img src="assets/img/-text.png" alt=""/>
              <figcaption>Подпись к картинке</figcaption>
            </figure>
            <p>Задача организации, в особенности же новая модель организационной деятельности играет важную роль
              в
              формировании позиций, занимаемых участниками в отношении поставленных задач. Идейные соображения
              высшего
              порядка, а также реализация намеченных плановых заданий требуют от нас анализа системы обучения
              кадров,
              соответствует насущным потребностям. Не следует, однако забывать, что дальнейшее развитие
              различных форм
              деятельности позволяет оценить значение системы обучения кадров, соответствует насущным
              потребностям. Задача
              организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей
              деятельности
              обеспечивает широкому кругу (специалистов) участие в формировании модели развития.</p>
            <hr>
            <h6>Заголовок шестого уровня</h6>
            <figure class="img_r clearfix">
              <img src="assets/img/-text.png" alt=""/>
              <figcaption>Подпись к картинке</figcaption>
            </figure>
            <p>Задача организации, в особенности же новая модель организационной деятельности играет важную роль
              в
              формировании позиций, занимаемых участниками в отношении поставленных задач. Идейные соображения
              высшего
              порядка, а также реализация намеченных плановых заданий требуют от нас анализа системы обучения
              кадров,
              соответствует насущным потребностям. Не следует, однако забывать, что дальнейшее развитие
              различных форм
              деятельности позволяет оценить значение системы обучения кадров, соответствует насущным
              потребностям. Задача
              организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей
              деятельности
              обеспечивает широкому кругу (специалистов) участие в формировании модели развития.</p>
            <div class="video-container">
              <iframe width="560" height="315" src="https://www.youtube.com/embed/4ilTV-2gfXI" frameborder="0" allowfullscreen></iframe>
            </div>
          </section>
          <section class="tabs-content" id="content3">
            <p>
              HTML5 (англ. HyperText Markup Language, version 5) — язык для структурирования и представления
              содержимого всемирной паутины. Это пятая версия HTML, последняя (четвёртая) версия которого была
              стандартизирована в 1997 году. По состоянию на октябрь 2013 года, HTML5 ещё находится в
              разработке, но, фактически, является рабочим стандартом (англ. HTML Living Standard). Цель
              разработки HTML5 — улучшение уровня поддержки мультимедиа-технологий, сохраняя при этом
              удобочитаемость кода для человека и простоту анализа для парсеров.
            </p>
            <p>
              Во всемирной паутине долгое время использовались стандарты HTML 4.01 и XHTML 1.1, и веб-страницы
              на практике оказывались свёрстаны с использованием смеси особенностей, представленных различными
              спецификациями, включая спецификации программных продуктов, например веб-браузеров, а также
              сложившихся общеупотребительных приёмов. HTML5 был создан, как единый язык разметки, который мог
              бы сочетать синтаксические нормы HTML и XHTML. Он расширяет, улучшает и рационализирует разметку
              документов, а также добавляет единое API для сложных веб-приложений.
            </p>
          </section>
          <section class="tabs-content" id="content4">
            <p>
              Спецификация CSS3 — это неоспоримое будущее в области декоративного оформления веб-страниц, и ее
              разработка еще далека от завершения. Большинство модулей все еще продолжает совершенствоваться и
              модифицироваться, и ни один браузер не поддерживает все модули. Это означает, что CSS3
              испытывает такие же сложности, как и HTML5. Веб-разработчикам нужно решать, какие возможности
              использовать, а какие игнорировать, а также каким образом заполнить зияющие пробелы в браузерной
              поддержке.
            </p>
            <p>
              CSS3 не является частью спецификации HTML5. Эти два стандарта были разработаны отдельно друг от
              друга, разными людьми, работающими в разное время в различных местах. Но даже организация W3C
              призывает веб-разработчиков использовать HTML5 и CSS3 вместе, как часть одной новой волны
              современного веб-дизайна.
            </p>
          </section>
        </div>
      </div>

      <div class="products-upsell">
        <div class="heading-block">
          <div class="heading-block__header-line">
            <div class="heading-block__title">Похожие товары</div>
          </div>
          <div class="heading-block__content products-line">
            {$_modx->runSnippet('!msProducts', [
              'parents' => 18,
              'link' => 1,
              'master' => $_modx->resource.id,
              'limit' => 4,
              'includeThumbs' => 'small,middle',
              'tpl' => '@FILE chunks/miniShop2/productCard.tpl'
            ])}
          </div>
        </div>
      </div>
    </main>
    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}

{block 'pswp'}
  {include 'file:chunks/pswp.tpl'}
{/block}