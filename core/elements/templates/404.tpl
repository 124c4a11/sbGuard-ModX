{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content error-page">
      <h1 class="title-404">404</h1>
      <p>Данная страница больше не доступна или никогда не существовала.</p>
      <a href="/">Перейти на главную страницу</a>
    </main>

    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}