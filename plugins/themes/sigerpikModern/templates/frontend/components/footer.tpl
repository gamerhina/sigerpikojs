{**
 * plugins/themes/sigerpikModern/templates/frontend/components/footer.tpl
 *
 * SigerPIK Modern Theme Footer
 *}

				</div> {* Close pkp_structure_main *}

				{* Sidebar Column *}
				{if $hasSidebar && $requestedPage === 'index'}
					<div class="col-lg-3 pkp_structure_sidebar" role="complementary">
						{include file="frontend/components/sidebar.tpl"}
					</div>
				{/if}
			</div> {* Close row *}
		</div> {* Close container *}

		{* Wave Footer *}
		<footer class="sigerpik-footer-wave" role="contentinfo">
			<div class="container">
				<div class="row">
					{* Column 1: Logo & Brand *}
					<div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
						<div class="sigerpik-footer-logo">
							<img src="{$activeTheme->getOption('sigerpikLogo')}" alt="SigerPIK Logo" style="height: 48px;">
						</div>
						<p class="text-white-50" style="font-size: 13px;">
							SigerPIK adalah wadah publikasi karya ilmiah orisinal bagi civitas akademika dan praktisi di bidang perikanan, kelautan, dan ketahanan pangan.
						</p>
					</div>

					{* Column 2: About & Links *}
					<div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
						<h5 class="sigerpik-footer-title">About</h5>
						<ul class="sigerpik-footer-links">
							<li><a href="{url page="about"}">Tentang Jurnal</a></li>
							<li><a href="{url page="about" op="editorialTeam"}">Editorial Team</a></li>
							<li><a href="{url page="about" op="contact"}">Contact</a></li>
						</ul>
					</div>

					{* Column 3: For Authors *}
					<div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
						<h5 class="sigerpik-footer-title">For Authors</h5>
						<ul class="sigerpik-footer-links">
							<li><a href="{url page="about" op="submissions"}#authorGuidelines">Author Guidelines</a></li>
							<li><a href="#">Template</a></li>
							<li><a href="{url page="about" op="submissions"}">Submission</a></li>
						</ul>
					</div>

					{* Column 4: Policies *}
					<div class="col-lg-2 col-md-6 mb-4 mb-lg-0">
						<h5 class="sigerpik-footer-title">Policies</h5>
						<ul class="sigerpik-footer-links">
							<li><a href="#">Publication Ethics</a></li>
							<li><a href="{url page="about" op="submissions"}#privacyStatement">Privacy Statement</a></li>
							<li><a href="#">Open Access Policy</a></li>
						</ul>
					</div>

					{* Column 5: Contact Us *}
					<div class="col-lg-3 col-md-6">
						<h5 class="sigerpik-footer-title">Contact Us</h5>
						<p class="text-white-50 mb-2" style="font-size: 13px;">
							<i class="bi bi-geo-alt-fill me-2 text-white"></i> Fakultas Pertanian, Universitas Lampung<br>Jl. Prof. Dr. Soemantri Brojonegoro No.1 Bandar Lampung 35145
						</p>
						<p class="text-white-50 mb-2" style="font-size: 13px;">
							<i class="bi bi-telephone-fill me-2 text-white"></i> {$activeTheme->getOption('sigerpikPhone')}
						</p>
						<p class="text-white-50" style="font-size: 13px;">
							<i class="bi bi-envelope-fill me-2 text-white"></i> {$activeTheme->getOption('sigerpikEmail')}
						</p>
					</div>
				</div>

				<hr class="border-secondary my-4">

				<div class="row align-items-center">
					<div class="col-md-6 text-center text-md-start text-white-50" style="font-size: 12px;">
						&copy; 2026 SigerPIK Universitas Lampung. All rights reserved.
					</div>
					<div class="col-md-6 text-center text-md-end text-white-50" style="font-size: 12px;">
						Powered by <a href="https://pkp.sfu.ca/ojs/" class="text-white">Open Journal Systems</a>.
					</div>
				</div>
			</div>
		</footer>

		{* Floating Widgets *}
		<a href="https://wa.me/{$activeTheme->getOption('sigerpikWhatsApp')}" target="_blank" class="floating-whatsapp" title="Hubungi Kami Melalui WhatsApp">
			<i class="bi bi-whatsapp"></i>
		</a>

		<button class="floating-backtotop" style="display: none;" title="Kembali ke Atas">
			<i class="bi bi-arrow-up"></i>
		</button>

	</div> {* Close pkp_structure_page *}

	{* Scripts *}
	{load_script context="frontend"}
	{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
