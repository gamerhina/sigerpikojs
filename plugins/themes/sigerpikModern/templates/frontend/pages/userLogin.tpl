{**
 * plugins/themes/sigerpikModern/templates/frontend/pages/userLogin.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2000-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * SigerPIK Modern Login Page Template.
 *}
{include file="frontend/components/header.tpl" pageTitle="user.login"}

<div class="container my-5 py-5 d-flex justify-content-center">
	<div class="sigerpik-login-card bg-white p-4 p-md-5 rounded-4 shadow-sm border" style="max-width: 480px; width: 100%;">
		
		{* Brand Logo & Header *}
		<div class="text-center mb-4">
			<img src="{$activeTheme->getOption('sigerpikLogo')}" alt="SigerPIK Logo" style="height: 60px;" class="mb-3">
			<h2 class="h4 font-weight-bold" style="color: #0B3D91;">{translate key="user.login"}</h2>
			<p class="text-muted" style="font-size: 13px;">Welcome back! Please login to your account.</p>
		</div>

		{if $loginMessage}
			<div class="alert alert-info py-2 px-3" style="font-size: 13px;">
				{translate key=$loginMessage}
			</div>
		{/if}

		{if $error}
			<div class="alert alert-danger py-2 px-3" style="font-size: 13px;">
				{translate key=$error reason=$reason}
			</div>
		{/if}

		<form class="cmp_form login" id="login" method="post" action="{$loginUrl}" role="form">
			{csrf}
			<input type="hidden" name="source" value="{$source|default:""|escape}" />

			{* Username / Email field *}
			<div class="mb-3">
				<label for="username" class="form-label font-weight-bold text-dark" style="font-size: 13px;">
					{translate key="user.usernameOrEmail"} <span class="text-danger">*</span>
				</label>
				<input type="text" name="username" id="username" class="form-control px-3 py-2" value="{$username|default:""|escape}" required aria-required="true" autocomplete="username" placeholder="Enter username or email" style="border-radius: 8px; font-size: 14px;">
			</div>

			{* Password field *}
			<div class="mb-3">
				<div class="d-flex justify-content-between align-items-center mb-1">
					<label for="password" class="form-label font-weight-bold text-dark mb-0" style="font-size: 13px;">
						{translate key="user.password"} <span class="text-danger">*</span>
					</label>
					<a href="{url page="login" op="lostPassword"}" class="text-decoration-none" style="font-size: 12px; color: #0B3D91; font-weight: 500;">
						{translate key="user.login.forgotPassword"}
					</a>
				</div>
				<input type="password" name="password" id="password" class="form-control px-3 py-2" value="{$password|default:""|escape}" password="true" maxlength="32" required aria-required="true" autocomplete="current-password" placeholder="••••••••" style="border-radius: 8px; font-size: 14px;">
			</div>

			{* Remember me checkbox *}
			<div class="mb-4 form-check d-flex align-items-center gap-2">
				<input type="checkbox" name="remember" id="remember" class="form-check-input" value="1" checked="$remember" style="cursor: pointer; width: 16px; height: 16px; margin-top: 0;">
				<label class="form-check-label text-muted" for="remember" style="font-size: 13px; cursor: pointer; user-select: none;">
					{translate key="user.login.rememberUsernameAndPassword"}
				</label>
			</div>

			{* recaptcha spam blocker *}
			{if $recaptchaPublicKey}
				<div class="mb-4 d-flex justify-content-center">
					<div class="g-recaptcha" data-sitekey="{$recaptchaPublicKey|escape}"></div>
				</div>
			{/if}

			{* Actions *}
			<div class="d-grid mb-3">
				<button class="btn btn-primary rounded-pill py-2 font-weight-bold" type="submit" style="background-color: #0B3D91; border-color: #0B3D91; font-size: 15px; letter-spacing: 0.02em;">
					{translate key="user.login"}
				</button>
			</div>

			{if !$disableUserReg}
				{capture assign=registerUrl}{url page="user" op="register" source=$source}{/capture}
				<div class="text-center pt-2 border-top" style="font-size: 13px;">
					<span class="text-muted">Don't have an account?</span> 
					<a href="{$registerUrl}" class="font-weight-bold ms-1 text-decoration-none" style="color: #0B3D91;">
						{translate key="user.login.registerNewAccount"}
					</a>
				</div>
			{/if}
		</form>
	</div>
</div>

{include file="frontend/components/footer.tpl"}
