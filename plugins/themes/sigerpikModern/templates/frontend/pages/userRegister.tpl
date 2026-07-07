{**
 * plugins/themes/sigerpikModern/templates/frontend/pages/userRegister.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * SigerPIK Modern Registration Page Template.
 *}
{include file="frontend/components/header.tpl" pageTitle="user.register"}

<div class="container my-5 py-3 d-flex justify-content-center">
	<div class="sigerpik-register-card bg-white p-4 p-md-5 rounded-4 shadow-sm border" style="max-width: 680px; width: 100%;">
		
		{* Brand Logo & Header *}
		<div class="text-center mb-4">
			<img src="{$activeTheme->getOption('sigerpikLogo')}" alt="SigerPIK Logo" style="height: 60px;" class="mb-3">
			<h2 class="h4 font-weight-bold" style="color: #0B3D91;">{translate key="user.register"}</h2>
			<p class="text-muted" style="font-size: 13px;">Create your account to start submitting and reviewing articles.</p>
		</div>

		<form class="cmp_form register" id="register" method="post" action="{url op="register"}" role="form">
			{csrf}
			{if $source}
				<input type="hidden" name="source" value="{$source|escape}" />
			{/if}

			{include file="common/formErrors.tpl"}
			{include file="frontend/components/registrationForm.tpl"}

			{* Context consent *}
			{if $currentContext}
				<fieldset class="consent mt-4">
					{if $currentContext->getData('privacyStatement')}
						<div class="optin optin-privacy form-check mb-2">
							<input type="checkbox" name="privacyConsent" id="privacyConsent" value="1"{if $privacyConsent} checked="checked"{/if} class="form-check-input">
							<label class="form-check-label text-muted" for="privacyConsent" style="font-size: 13px;">
								{capture assign="privacyUrl"}{url router=\PKP\core\PKPApplication::ROUTE_PAGE page="about" op="privacy"}{/capture}
								{translate key="user.register.form.privacyConsent" privacyUrl=$privacyUrl}
							</label>
						</div>
					{/if}
					<div class="optin optin-email form-check mb-2">
						<input type="checkbox" name="emailConsent" id="emailConsent" value="1"{if $emailConsent} checked="checked"{/if} class="form-check-input">
						<label class="form-check-label text-muted" for="emailConsent" style="font-size: 13px;">
							{translate key="user.register.form.emailConsent"}
						</label>
					</div>
				</fieldset>

				{assign var=contextId value=$currentContext->getId()}
				{assign var=userCanRegisterReviewer value=0}
				{foreach from=$reviewerUserGroups[$contextId] item=userGroup}
					{if $userGroup->getPermitSelfRegistration()}
						{assign var=userCanRegisterReviewer value=$userCanRegisterReviewer+1}
					{/if}
				{/foreach}
				{if $userCanRegisterReviewer}
					<fieldset class="reviewer mt-4 pt-3 border-top">
						<legend class="h6 font-weight-bold mb-3" style="color: #0B3D91;">{translate key="user.reviewerPrompt"}</legend>
						<div class="optin mb-3">
							{foreach from=$reviewerUserGroups[$contextId] item=userGroup}
								{if $userGroup->getPermitSelfRegistration()}
									<div class="form-check mb-2">
										{assign var="userGroupId" value=$userGroup->getId()}
										<input type="checkbox" name="reviewerGroup[{$userGroupId}]" id="reviewerGroup_{$userGroupId}" value="1"{if in_array($userGroupId, $userGroupIds)} checked="checked"{/if} class="form-check-input">
										<label class="form-check-label text-muted" for="reviewerGroup_{$userGroupId}" style="font-size: 13px;">
											{translate key="user.reviewerPrompt.optin" userGroup=$userGroup->getLocalizedName()}
										</label>
									</div>
								{/if}
							{/foreach}
						</div>
						<div id="reviewerInterests" class="reviewer_interests mb-3">
							<label for="interests" class="form-label font-weight-bold text-dark" style="font-size: 13px;">
								{translate key="user.interests"}
							</label>
							<input type="text" name="interests" id="interests" class="form-control" value="{$interests|default:""|escape}" placeholder="E.g. Aquaculture, Marine Biology" style="border-radius: 8px; font-size: 14px;">
						</div>
					</fieldset>
				{/if}
			{/if}

			{include file="frontend/components/registrationFormContexts.tpl"}

			{if !$currentContext}
				<div class="mb-3">
					<label for="interests" class="form-label font-weight-bold text-dark" style="font-size: 13px;">
						{translate key="user.register.noContextReviewerInterests"}
					</label>
					<input type="text" name="interests" id="interests" class="form-control" value="{$interests|default:""|escape}" style="border-radius: 8px; font-size: 14px;">
				</div>
				{if $siteWidePrivacyStatement}
					<div class="optin optin-privacy form-check mb-2">
						<input type="checkbox" name="privacyConsent[{\PKP\core\PKPApplication::CONTEXT_ID_NONE}]" id="privacyConsent[{\PKP\core\PKPApplication::CONTEXT_ID_NONE}]" value="1"{if $privacyConsent[\PKP\core\PKPApplication::CONTEXT_ID_NONE]} checked="checked"{/if} class="form-check-input">
						<label class="form-check-label text-muted" for="privacyConsent[{\PKP\core\PKPApplication::CONTEXT_ID_NONE}]" style="font-size: 13px;">
							{capture assign="privacyUrl"}{url router=\PKP\core\PKPApplication::ROUTE_PAGE page="about" op="privacy"}{/capture}
							{translate key="user.register.form.privacyConsent" privacyUrl=$privacyUrl}
						</label>
					</div>
				{/if}
				<div class="optin optin-email form-check mb-2">
					<input type="checkbox" name="emailConsent" id="emailConsent" value="1"{if $emailConsent} checked="checked"{/if} class="form-check-input">
					<label class="form-check-label text-muted" for="emailConsent" style="font-size: 13px;">
						{translate key="user.register.form.emailConsent"}
					</label>
				</div>
			{/if}

			{if $recaptchaPublicKey}
				<div class="my-4 d-flex justify-content-center">
					<div class="g-recaptcha" data-sitekey="{$recaptchaPublicKey|escape}"></div>
				</div>
			{/if}

			<div class="d-grid gap-2 mt-4 pt-3 border-top">
				<button class="btn btn-primary rounded-pill py-2 font-weight-bold" type="submit" style="background-color: #0B3D91; border-color: #0B3D91; font-size: 15px;">
					{translate key="user.register"}
				</button>
				<div class="text-center pt-2" style="font-size: 13px;">
					<span class="text-muted">Already have an account?</span>
					<a href="{url page="login"}" class="font-weight-bold ms-1 text-decoration-none" style="color: #0B3D91;">
						{translate key="user.login"}
					</a>
				</div>
			</div>
		</form>
	</div>
</div>

{include file="frontend/components/footer.tpl"}
