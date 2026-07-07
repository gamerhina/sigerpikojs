{**
 * plugins/themes/sigerpikModern/templates/frontend/components/sidebar.tpl
 *
 * SigerPIK Modern Sidebar Widgets
 *}

{* Render dynamic custom blocks configured in OJS Dashboard *}
{call_hook name="Templates::Common::Sidebar"}

{* 1. INDEXED BY *}
<div class="sigerpik-sidebar-widget">
	<h5 class="sigerpik-sidebar-title">Indexed By</h5>
	{$activeTheme->getOption('sigerpikIndexedByHtml')}
</div>

{* 2. STATISTICS *}
<div class="sigerpik-sidebar-widget">
	<h5 class="sigerpik-sidebar-title">Statistics</h5>
	{$activeTheme->getOption('sigerpikStatisticsHtml')}
</div>

{* 3. VISITORS *}
<div class="sigerpik-sidebar-widget">
	<h5 class="sigerpik-sidebar-title">Visitors</h5>
	{$activeTheme->getOption('sigerpikVisitorsHtml')}
</div>

{* 4. FOLLOW US *}
<div class="sigerpik-sidebar-widget">
	<h5 class="sigerpik-sidebar-title">Follow Us</h5>
	<div class="follow-us-icons">
		<a href="#" class="follow-icon"><i class="bi bi-facebook"></i></a>
		<a href="#" class="follow-icon"><i class="bi bi-twitter-x"></i></a>
		<a href="#" class="follow-icon"><i class="bi bi-instagram"></i></a>
		<a href="#" class="follow-icon"><i class="bi bi-youtube"></i></a>
	</div>
</div>
