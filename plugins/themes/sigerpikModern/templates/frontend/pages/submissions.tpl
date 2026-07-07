{**
 * plugins/themes/sigerpikModern/templates/frontend/pages/submissions.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * SigerPIK Submissions page template override.
 *}
{include file="frontend/components/header.tpl" pageTitle="about.submissions"}

<div class="page page_submissions container my-5">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.submissions"}
	
	<h1 class="sigerpik-page-title mb-4">
		{translate key="about.submissions"}
	</h1>

	<div class="cmp_notification">
		{if $sections|@count == 0 || $currentContext->getData('disableSubmissions')}
			<div class="alert alert-warning">
				{translate key="author.submit.notAccepting"}
			</div>
		{else}
			{if $isUserLoggedIn}
				<div class="sigerpik-submissions-box text-center p-4 my-4" style="background: rgba(11, 61, 145, 0.05); border-radius: 12px; border: 1px solid rgba(11, 61, 145, 0.1);">
					<p class="mb-3 font-weight-bold" style="color: #0B3D91; font-size: 16px;">You are currently logged in.</p>
					<div class="d-flex justify-content-center gap-3 flex-wrap">
						<a href="{url page="submission"}" class="btn text-white rounded-pill px-4 py-2 font-weight-bold" style="background-color: #0B3D91; border-color: #0B3D91;"><i class="bi bi-plus-circle me-1"></i> Make a New Submission</a>
						<a href="{url page="submissions"}" class="btn rounded-pill px-4 py-2 font-weight-bold" style="color: #0B3D91; border-color: #0B3D91; border: 1px solid #0B3D91; background: transparent;"><i class="bi bi-list-task me-1"></i> View Your Submissions</a>
					</div>
				</div>
			{else}
				<div class="sigerpik-submissions-box text-center p-4 my-4" style="background: rgba(11, 61, 145, 0.05); border-radius: 12px; border: 1px solid rgba(11, 61, 145, 0.1);">
					<p class="mb-3 font-weight-bold" style="color: #0B3D91; font-size: 16px;">Login or Register is required to submit a new article.</p>
					<div class="d-flex justify-content-center gap-3 flex-wrap">
						<a href="{url page="login"}" class="btn text-white rounded-pill px-4 py-2 font-weight-bold" style="background-color: #0B3D91; border-color: #0B3D91;"><i class="bi bi-box-arrow-in-right me-1"></i> LOGIN</a>
						<a href="{url page="user" op="register"}" class="btn rounded-pill px-4 py-2 font-weight-bold" style="color: #0B3D91; border-color: #0B3D91; border: 1px solid #0B3D91; background: transparent;"><i class="bi bi-person-plus me-1"></i> REGISTER</a>
					</div>
				</div>
			{/if}
		{/if}
	</div>

	{if $currentContext->getLocalizedData('authorGuidelines')}
	<div class="author_guidelines my-5" id="authorGuidelines">
		<h2 class="sigerpik-section-title mb-3">
			{translate key="about.authorGuidelines"}
			{include file="frontend/components/editLink.tpl" page="management" op="settings" path="workflow" anchor="submission/instructions" sectionTitleKey="about.authorGuidelines"}
		</h2>
		<div class="sigerpik-body-content">
			{$currentContext->getLocalizedData('authorGuidelines')}
		</div>
	</div>
	{/if}

	{if $submissionChecklist}
		<div class="submission_checklist my-5">
			<h2 class="sigerpik-section-title mb-3">
				{translate key="about.submissionPreparationChecklist"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="workflow" anchor="submission/instructions" sectionTitleKey="about.submissionPreparationChecklist"}
			</h2>
			<div class="sigerpik-body-content">
				{$submissionChecklist}
			</div>
		</div>
	{/if}

	{if isset($submissionChecklistAfterContent)}
		<div class="my-4">
			{$submissionChecklistAfterContent}
		</div>
	{/if}

	{if $currentContext->getLocalizedData('copyrightNotice')}
		<div class="copyright_notice my-5">
			<h2 class="sigerpik-section-title mb-3">
				{translate key="about.copyrightNotice"}
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="workflow" anchor="submission/authorGuidelines" sectionTitleKey="about.copyrightNotice"}
			</h2>
			<div class="sigerpik-body-content">
				{$currentContext->getLocalizedData('copyrightNotice')}
			</div>
		</div>
	{/if}

	{if $currentContext->getLocalizedData('privacyStatement')}
	<div class="privacy_statement my-5" id="privacyStatement">
		<h2 class="sigerpik-section-title mb-3">
			{translate key="about.privacyStatement"}
			{include file="frontend/components/editLink.tpl" page="management" op="settings" path="website" anchor="setup/privacy" sectionTitleKey="about.privacyStatement"}
		</h2>
		<div class="sigerpik-body-content">
			{$currentContext->getLocalizedData('privacyStatement')}
		</div>
	</div>
	{/if}

</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
