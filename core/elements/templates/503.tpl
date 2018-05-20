{extends 'file:templates/layout.tpl'}

{block 'main'}
  <div class="content-wrapper container">
    <main class="main-content error-page">
      <h1 class="title-404">503</h1>
      <p>Cайт не доступен!</p>
    </main>

    {include 'file:chunks/sidebar.tpl'}
  </div>
{/block}