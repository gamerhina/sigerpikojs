{**
 * plugins/themes/sigerpikModern/templates/frontend/components/registrationForm.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * SigerPIK Modern Registration Form Fields Override.
 *}
<fieldset class="identity mb-4">
	<legend class="h5 font-weight-bold pb-2 border-bottom mb-3" style="color: #0B3D91;">
		{translate key="user.profile"}
	</legend>
	
	<div class="row">
		{* Given Name (First Name) *}
		<div class="col-md-6 mb-3">
			<label for="givenName" class="form-label font-weight-bold text-dark mb-1" style="font-size: 13px;">
				{translate key="user.givenName"} <span class="text-danger">*</span>
			</label>
			<input type="text" name="givenName" autocomplete="given-name" id="givenName" class="form-control px-3 py-2" value="{$givenName|default:""|escape}" maxlength="255" required aria-required="true" style="border-radius: 8px; font-size: 14px;">
		</div>

		{* Family Name (Last Name) *}
		<div class="col-md-6 mb-3">
			<label for="familyName" class="form-label font-weight-bold text-dark mb-1" style="font-size: 13px;">
				{translate key="user.familyName"}
			</label>
			<input type="text" name="familyName" autocomplete="family-name" id="familyName" class="form-control px-3 py-2" value="{$familyName|default:""|escape}" maxlength="255" style="border-radius: 8px; font-size: 14px;">
		</div>
	</div>

	<div class="row">
		{* Affiliation *}
		<div class="col-md-6 mb-3">
			<label for="affiliation" class="form-label font-weight-bold text-dark mb-1" style="font-size: 13px;">
				{translate key="user.affiliation"} <span class="text-danger">*</span>
			</label>
			<input type="text" name="affiliation" autocomplete="organization" id="affiliation" class="form-control px-3 py-2" value="{$affiliation|default:""|escape}" required aria-required="true" style="border-radius: 8px; font-size: 14px;">
		</div>

		{* Country *}
		<div class="col-md-6 mb-3">
			<label for="country" class="form-label font-weight-bold text-dark mb-1" style="font-size: 13px;">
				{translate key="common.country"} <span class="text-danger">*</span>
			</label>
			<select name="country" id="country" autocomplete="country-name" required aria-required="true" class="form-select px-3 py-2" style="border-radius: 8px; font-size: 14px; height: auto;">
				<option value=""></option>
				{html_options options=$countries selected=$country}
			</select>
		</div>
	</div>
</fieldset>

<fieldset class="login-credentials mb-4">
	<legend class="h5 font-weight-bold pb-2 border-bottom mb-3" style="color: #0B3D91;">
		{translate key="user.login"}
	</legend>
	
	<div class="row">
		{* Email *}
		<div class="col-md-6 mb-3">
			<label for="email" class="form-label font-weight-bold text-dark mb-1" style="font-size: 13px;">
				{translate key="user.email"} <span class="text-danger">*</span>
			</label>
			<input type="email" name="email" id="email" class="form-control px-3 py-2" value="{$email|default:""|escape}" maxlength="90" required aria-required="true" autocomplete="email" style="border-radius: 8px; font-size: 14px;">
		</div>

		{* Username *}
		<div class="col-md-6 mb-3">
			<label for="username" class="form-label font-weight-bold text-dark mb-1" style="font-size: 13px;">
				{translate key="user.username"} <span class="text-danger">*</span>
			</label>
			<input type="text" name="username" id="username" class="form-control px-3 py-2" value="{$username|default:""|escape}" maxlength="32" required aria-required="true" autocomplete="username" style="border-radius: 8px; font-size: 14px;">
		</div>
	</div>

	<div class="row">
		{* Password *}
		<div class="col-md-6 mb-3">
			<label for="password" class="form-label font-weight-bold text-dark mb-1" style="font-size: 13px;">
				{translate key="user.password"} <span class="text-danger">*</span>
			</label>
			<input type="password" name="password" id="password" class="form-control px-3 py-2" password="true" maxlength="32" required aria-required="true" autocomplete="new-password" placeholder="••••••••" style="border-radius: 8px; font-size: 14px;">
		</div>

		{* Repeat Password *}
		<div class="col-md-6 mb-3">
			<label for="password2" class="form-label font-weight-bold text-dark mb-1" style="font-size: 13px;">
				{translate key="user.repeatPassword"} <span class="text-danger">*</span>
			</label>
			<input type="password" name="password2" id="password2" class="form-control px-3 py-2" password="true" maxlength="32" required aria-required="true" autocomplete="new-password" placeholder="••••••••" style="border-radius: 8px; font-size: 14px;">
		</div>
	</div>
</fieldset>
