{**
 * plugins/themes/sigerpikModern/templates/frontend/components/header.tpl
 *
 * SigerPIK Modern Theme Header
 *}
{strip}
	{assign var="showingLogo" value=true}
	{if !$displayPageHeaderLogo}
		{assign var="showingLogo" value=false}
	{/if}
{/strip}
<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
{include file="frontend/components/headerHead.tpl"}
<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}" dir="{$currentLocaleLangDir|escape|default:"ltr"}">

	<div class="pkp_structure_page">
		
		{* Topbar *}
		<div class="sigerpik-topbar">
			<div class="container d-flex justify-content-between align-items-center">
				<div class="d-flex align-items-center gap-3">
					<span><i class="bi bi-envelope-fill me-1"></i> {$activeTheme->getOption('sigerpikEmail')}</span>
					<span><i class="bi bi-telephone-fill me-1"></i> {$activeTheme->getOption('sigerpikPhone')}</span>
				</div>
				<div class="d-flex align-items-center gap-3">
					<a href="{url page="about" op="submissions"}">Make a Submission</a>
					{if $isUserLoggedIn}
						<a href="{url page="user" op="profile"}" class="btn btn-sm btn-outline-light rounded-pill px-3" style="font-size: 12px; padding-top: 2px; padding-bottom: 2px;">Profile</a>
						<a href="{url page="login" op="signOut"}" class="btn btn-sm btn-light text-dark rounded-pill px-3 font-weight-bold" style="font-size: 12px; padding-top: 2px; padding-bottom: 2px;">Logout</a>
					{else}
						<a href="{url page="user" op="register"}" class="btn btn-sm btn-outline-light rounded-pill px-3" style="font-size: 12px; padding-top: 2px; padding-bottom: 2px;">Register</a>
						<a href="{url page="login"}" class="btn btn-sm btn-light text-dark rounded-pill px-3 font-weight-bold" style="font-size: 12px; padding-top: 2px; padding-bottom: 2px;">Login</a>
					{/if}
					

					
					{* Dark Mode Toggle *}
					<a href="#" class="dark-mode-toggle text-warning"><i class="bi bi-moon-fill"></i></a>
				</div>
			</div>
		</div>

		{* Main Header Navigation *}
		<header class="sigerpik-header" id="headerNavigationContainer" role="banner">
			<div class="container">
				<nav class="navbar navbar-expand-lg p-0 align-items-center justify-content-between">
					{* Logo Section *}
					<div class="sigerpik-logo-container d-flex align-items-center gap-2">
						{capture assign="homeUrl"}{url page="index" router=\PKP\core\PKPApplication::ROUTE_PAGE}{/capture}
						<a href="{$homeUrl}" class="navbar-brand d-flex align-items-center gap-2">
							{* We use custom HTML structure for SigerPIK logo + Unila logo side by side *}
							<img src="{$activeTheme->getOption('sigerpikLogo')}" alt="SigerPIK Logo" style="height: 55px;">
							<img src="{$activeTheme->getOption('sigerpikUnilaLogo')}" alt="Unila Logo" style="height: 50px;">
						</a>
					</div>

					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sigerpikNavbarContent" aria-controls="sigerpikNavbarContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					{* Navigation links *}
					<div class="collapse navbar-collapse justify-content-center" id="sigerpikNavbarContent">
						<ul class="navbar-nav mb-2 mb-lg-0 gap-1">
							<li class="nav-item"><a class="nav-link sigerpik-nav-link active" href="{$homeUrl}">Home</a></li>
							<li class="nav-item"><a class="nav-link sigerpik-nav-link" href="{url page="about"}">About</a></li>
							<li class="nav-item"><a class="nav-link sigerpik-nav-link" href="{url page="user"}">User Home</a></li>
							<li class="nav-item"><a class="nav-link sigerpik-nav-link" href="{url page="issue" op="current"}">Current</a></li>
							<li class="nav-item"><a class="nav-link sigerpik-nav-link" href="{url page="issue" op="archive"}">Archives</a></li>
							<li class="nav-item"><a class="nav-link sigerpik-nav-link" href="{url page="announcement"}">Announcements</a></li>
							<li class="nav-item"><a class="nav-link sigerpik-nav-link" href="{url page="about" op="contact"}">Contact</a></li>
						</ul>
					</div>

					{* Action Button & Search *}
					<div class="d-flex align-items-center gap-3">
						{if $currentContext && $requestedPage !== 'search'}
							<a href="{url page="search"}" class="text-secondary fs-5" title="Search"><i class="bi bi-search"></i></a>
						{/if}
						<a href="{url page="about" op="submissions"}" class="btn btn-submit-article"><i class="bi bi-send-fill me-2"></i>Submit Article</a>
					</div>
				</nav>
			</div>
		</header>

		{* Wrapper for page content and sidebars *}
		{if $isFullWidth}
			{assign var=hasSidebar value=0}
		{/if}
		
		{* Main content container *}
		<div class="container my-4">
			<div class="row">
				{* Main Content Area *}
				<div class="{if $hasSidebar && $requestedPage === 'index'}col-lg-9{else}col-lg-12{/if} pkp_structure_main" role="main">
