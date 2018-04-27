{extends 'file:templates/layout.tpl'}

{block 'main'}
	<div class="content-wrapper container">
		<main class="main-content main-content--text">
			{include 'file:chunks/breadcrumbs.tpl'}

			<h1>{$_modx->resource.pagetitle}</h1>

			{$_modx->resource.content}

			<h2>С нами уже успешно сотрудничают</h2>
			<div class="brand-block">
				<div class="banner-block__banner-item">
					<img src="assets/images/clients/client-1.png" alt="banner">
				</div>
				<div class="banner-block__banner-item">
					<img src="assets/images/clients/client-2.png" alt="banner">
				</div>
				<div class="banner-block__banner-item">
					<img src="assets/images/clients/client-3.png" alt="banner">
				</div>
				<div class="banner-block__banner-item">
					<img src="assets/images/clients/client-4.png" alt="banner">
				</div>
				<div class="banner-block__banner-item">
					<img src="assets/images/clients/client-5.png" alt="banner">
				</div>
				<div class="banner-block__banner-item">
					<img src="assets/images/clients/client-1.png" alt="banner">
				</div>
				<div class="banner-block__banner-item">
					<img src="assets/images/clients/client-1.png" alt="banner">
				</div>
				<div class="banner-block__banner-item">
					<img src="assets/images/clients/client-1.png" alt="banner">
				</div>
			</div>
		</main>

		{include 'file:chunks/sidebar.tpl'}
	</div>
{/block}