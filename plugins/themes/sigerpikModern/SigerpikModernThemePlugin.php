<?php

/**
 * @file plugins/themes/sigerpikModern/SigerpikModernThemePlugin.php
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class SigerpikModernThemePlugin
 * @ingroup plugins_themes_sigerpikModern
 *
 * @brief SigerPIK Modern theme plugin class
 */

namespace APP\plugins\themes\sigerpikModern;

use APP\core\Application;
use PKP\session\SessionManager;

class SigerpikModernThemePlugin extends \PKP\plugins\ThemePlugin
{
    /**
     * @copydoc ThemePlugin::isActive()
     */
    public function isActive()
    {
        if (SessionManager::isDisabled()) {
            return true;
        }
        return parent::isActive();
    }

    /**
     * Initialize the theme's styles, scripts and hooks.
     */
    public function init()
    {
        // Register Custom Theme Options (UI inputs for users in OJS Dashboard)
        $this->addOption('sigerpikPrimaryColor', 'FieldColor', [
            'label' => 'Primary Color (Ocean Blue)',
            'description' => 'Ganti warna biru utama pada topbar, header, dan button.',
            'default' => '#0B3D91',
        ]);

        $this->addOption('sigerpikSecondaryColor', 'FieldColor', [
            'label' => 'Secondary Color (Marine Blue)',
            'description' => 'Ganti warna biru terang untuk hover, link, dan aksen card.',
            'default' => '#1565C0',
        ]);

        $this->addOption('sigerpikAccentColor', 'FieldColor', [
            'label' => 'Accent Color (Ocean Cyan)',
            'description' => 'Ganti warna cyan untuk judul sidebar dan detail statistik.',
            'default' => '#00BCD4',
        ]);

        $this->addOption('sigerpikWhatsApp', 'FieldText', [
            'label' => 'WhatsApp Contact Number',
            'description' => 'Masukkan nomor WhatsApp kontak (gunakan format internasional tanpa tanda +, contoh: 6282175438821).',
            'default' => '6282175438821',
        ]);

        $this->addOption('sigerpikEmail', 'FieldText', [
            'label' => 'Contact Email',
            'description' => 'Masukkan alamat email resmi untuk ditampilkan di topbar dan footer.',
            'default' => 'sigerpik@fp.unila.ac.id',
        ]);

        $this->addOption('sigerpikPhone', 'FieldText', [
            'label' => 'Contact Phone Number',
            'description' => 'Masukkan nomor telepon resmi untuk ditampilkan di topbar dan footer.',
            'default' => '+62 821-7543-8821',
        ]);

        $request = Application::get()->getRequest();
        $baseUrl = $request->getBaseUrl();

        $this->addOption('sigerpikLogo', 'FieldText', [
            'label' => 'Primary Logo (SigerPIK)',
            'description' => 'Alamat URL gambar logo utama SigerPIK.',
            'default' => $baseUrl . '/plugins/themes/sigerpikModern/assets/images/logo-sigerpik.png',
        ]);

        $this->addOption('sigerpikUnilaLogo', 'FieldText', [
            'label' => 'Secondary Logo (Unila)',
            'description' => 'Alamat URL gambar logo Universitas Lampung.',
            'default' => $baseUrl . '/plugins/themes/sigerpikModern/assets/images/logo-unila.png',
        ]);

        $this->addOption('sigerpikSlideTitle1', 'FieldText', [
            'label' => 'Slide 1 Title',
            'description' => 'Judul utama yang tampil pada slide pertama slideshow.',
            'default' => '',
        ]);

        $this->addOption('sigerpikSlideSubtitle1', 'FieldText', [
            'label' => 'Slide 1 Subtitle',
            'description' => 'Subjudul/slogan yang tampil pada slide pertama slideshow.',
            'default' => '',
        ]);

        $this->addOption('sigerpikSlideImage1', 'FieldText', [
            'label' => 'Slide 1 Background Image URL',
            'description' => 'Alamat URL gambar latar untuk slide pertama slideshow.',
            'default' => $baseUrl . '/plugins/themes/sigerpikModern/assets/images/flyer-1.jpg',
        ]);

        // Slide 2 Options
        $this->addOption('sigerpikSlideTitle2', 'FieldText', [
            'label' => 'Slide 2 Title',
            'description' => 'Judul utama yang tampil pada slide kedua slideshow.',
            'default' => '',
        ]);

        $this->addOption('sigerpikSlideSubtitle2', 'FieldText', [
            'label' => 'Slide 2 Subtitle',
            'description' => 'Subjudul/slogan yang tampil pada slide kedua slideshow.',
            'default' => '',
        ]);

        $this->addOption('sigerpikSlideImage2', 'FieldText', [
            'label' => 'Slide 2 Background Image URL',
            'description' => 'Alamat URL gambar latar untuk slide kedua slideshow.',
            'default' => $baseUrl . '/plugins/themes/sigerpikModern/assets/images/flyer-2.jpg',
        ]);

        // Slide 3 Options
        $this->addOption('sigerpikSlideTitle3', 'FieldText', [
            'label' => 'Slide 3 Title',
            'description' => 'Judul utama yang tampil pada slide ketiga slideshow (biarkan kosong jika tidak digunakan).',
            'default' => '',
        ]);

        $this->addOption('sigerpikSlideSubtitle3', 'FieldText', [
            'label' => 'Slide 3 Subtitle',
            'description' => 'Subjudul/slogan yang tampil pada slide ketiga slideshow.',
            'default' => '',
        ]);

        $this->addOption('sigerpikSlideImage3', 'FieldText', [
            'label' => 'Slide 3 Background Image URL',
            'description' => 'Alamat URL gambar latar untuk slide ketiga slideshow.',
            'default' => '',
        ]);

        // Slider Customization Settings
        $this->addOption('sigerpikSliderOverlayColor', 'FieldColor', [
            'label' => 'Slider Overlay Color',
            'description' => 'Warna overlay di antara gambar dan teks pada slider.',
            'default' => '#082a63',
        ]);

        $this->addOption('sigerpikSliderOverlayOpacity', 'FieldText', [
            'label' => 'Slider Overlay Opacity (0.0 to 1.0)',
            'description' => 'Tingkat transparansi warna overlay. (Contoh: 0.4 untuk lumayan transparan, 1.0 untuk solid).',
            'default' => '0.4',
        ]);

        $this->addOption('sigerpikSliderTransitionTime', 'FieldText', [
            'label' => 'Slider Transition Time (ms)',
            'description' => 'Lama waktu transisi antar slide dalam milidetik (Contoh: 6000 untuk 6 detik).',
            'default' => '6000',
        ]);

        $this->addOption('sigerpikSliderTransitionType', 'FieldOptions', [
            'label' => 'Slider Transition Type',
            'description' => 'Jenis animasi transisi saat berganti slide.',
            'options' => [
                ['value' => 'fade', 'label' => 'Fade (Memudar)'],
                ['value' => 'slide', 'label' => 'Slide (Menggeser)'],
            ],
            'default' => 'fade',
        ]);

        // Sidebar Custom Blocks Options (Editable by Journal Manager)
        $indexedBaseUrl = $baseUrl . '/plugins/themes/sigerpikModern/assets/images/indexed/';
        $this->addOption('sigerpikIndexedByHtml', 'FieldTextarea', [
            'label' => 'Indexed By Widget HTML',
            'description' => 'Edit HTML logo pengindeksan di sidebar.',
            'default' => '<div class="indexed-by-grid">
	<div class="indexed-logo-card" title="Scopus">
		<img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Scopus_logo.svg" alt="Scopus" onerror="this.onerror=null; this.src=\'https://placehold.co/100x40?text=Scopus\';">
	</div>
	<div class="indexed-logo-card" title="DOAJ">
		<img src="' . $indexedBaseUrl . 'doaj.png" alt="DOAJ" onerror="this.onerror=null; this.src=\'https://placehold.co/100x40?text=DOAJ\';">
	</div>
	<div class="indexed-logo-card" title="Garuda">
		<img src="' . $indexedBaseUrl . 'garuda.png" alt="Garuda" onerror="this.onerror=null; this.src=\'https://placehold.co/100x40?text=Garuda\';">
	</div>
	<div class="indexed-logo-card" title="Sinta">
		<img src="' . $indexedBaseUrl . 'sinta.png" alt="Sinta" onerror="this.onerror=null; this.src=\'https://placehold.co/100x40?text=Sinta\';">
	</div>
	<div class="indexed-logo-card" title="Google Scholar">
		<img src="' . $indexedBaseUrl . 'google.png" alt="Google Scholar" onerror="this.onerror=null; this.src=\'https://placehold.co/100x40?text=Scholar\';">
	</div>
	<div class="indexed-logo-card" title="Crossref">
		<img src="' . $indexedBaseUrl . 'crossref.png" alt="Crossref" onerror="this.onerror=null; this.src=\'https://placehold.co/100x40?text=Crossref\';">
	</div>
	<div class="indexed-logo-card" title="Dimensions">
		<img src="' . $indexedBaseUrl . 'dimensions.png" alt="Dimensions" onerror="this.onerror=null; this.src=\'https://placehold.co/100x40?text=Dimensions\';">
	</div>
	<div class="indexed-logo-card" title="ROAD">
		<img src="' . $indexedBaseUrl . 'road.png" alt="ROAD" onerror="this.onerror=null; this.src=\'https://placehold.co/100x40?text=ROAD\';">
	</div>
</div>',
        ]);

        $this->addOption('sigerpikStatisticsHtml', 'FieldTextarea', [
            'label' => 'Statistics Widget HTML',
            'description' => 'Edit HTML angka statistik di sidebar.',
            'default' => '<div class="stats-grid">
	<div class="stats-card">
		<i class="bi bi-journal-text"></i>
		<span class="stats-number">1,250+</span>
		<span class="stats-label">Articles</span>
	</div>
	<div class="stats-card">
		<i class="bi bi-people-fill"></i>
		<span class="stats-number">3,421+</span>
		<span class="stats-label">Authors</span>
	</div>
	<div class="stats-card">
		<i class="bi bi-cloud-arrow-down-fill"></i>
		<span class="stats-number">12,890+</span>
		<span class="stats-label">Downloads</span>
	</div>
	<div class="stats-card">
		<i class="bi bi-globe-americas"></i>
		<span class="stats-number">54+</span>
		<span class="stats-label">Countries</span>
	</div>
</div>',
        ]);

        $this->addOption('sigerpikVisitorsHtml', 'FieldTextarea', [
            'label' => 'Visitors Widget HTML',
            'description' => 'Edit HTML grafik pengunjung di sidebar.',
            'default' => '<div class="d-flex justify-content-between align-items-center mb-3">
	<div>
		<div class="visitor-total">18,742</div>
		<div class="text-muted" style="font-size: 11px; font-weight: 600; text-transform: uppercase;">Total Visitors</div>
	</div>
	<div class="text-end">
		<div class="visitor-trend"><i class="bi bi-arrow-up-right me-1"></i>12.5%</div>
		<div class="text-muted" style="font-size: 11px; font-weight: 600;">This Month</div>
	</div>
</div>
<div style="height: 60px; width: 100%;">
	<svg viewBox="0 0 100 30" class="w-100 h-100" preserveAspectRatio="none">
		<defs>
			<linearGradient id="grad" x1="0%" y1="0%" x2="0%" y2="100%">
				<stop offset="0%" style="stop-color:rgba(11,61,145,0.2);stop-opacity:1" />
				<stop offset="100%" style="stop-color:rgba(11,61,145,0.0);stop-opacity:1" />
			</linearGradient>
		</defs>
		<path d="M0 30 L0 20 L15 15 L30 22 L45 10 L60 18 L75 14 L90 5 L100 12 L100 30 Z" fill="url(#grad)" />
		<path d="M0 20 L15 15 L30 22 L45 10 L60 18 L75 14 L90 5 L100 12" fill="none" stroke="#0B3D91" stroke-width="1.5" stroke-linecap="round" />
	</svg>
</div>',
        ]);

        // Load Inter font from Google Fonts CDN
        $this->addStyle('font-inter', 'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap', ['baseUrl' => '']);
        
        // Load FontAwesome from OJS lib
        $request = Application::get()->getRequest();
        $this->addStyle(
            'fontAwesome',
            $request->getBaseUrl() . '/lib/pkp/styles/fontawesome/fontawesome.css',
            ['baseUrl' => '']
        );

        // Load Bootstrap 5 CSS & JS from jsdelivr CDN
        $this->addStyle('bootstrap-css', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css', ['baseUrl' => '']);
        $this->addScript('bootstrap-js', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js', ['baseUrl' => '']);

        // Load Bootstrap Icons CDN
        $this->addStyle('bootstrap-icons', 'https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css', ['baseUrl' => '']);

        // Load theme custom assets
        $this->addStyle('theme-css', 'assets/css/theme.css');
        $this->addScript('theme-js', 'assets/js/theme.js');

        // Dynamically inject custom color properties into :root to override the static values
        $primaryColor = $this->getOption('sigerpikPrimaryColor');
        $secondaryColor = $this->getOption('sigerpikSecondaryColor');
        $accentColor = $this->getOption('sigerpikAccentColor');
        
        $inlineStyles = "
            :root {
                --primary-color: {$primaryColor};
                --secondary-color: {$secondaryColor};
                --accent-color: {$accentColor};
            }
        ";
        $this->addStyle('sigerpik-inline-colors', $inlineStyles, ['inline' => true]);
    }

    /**
     * Get the display name of this plugin
     * @return string
     */
    public function getDisplayName()
    {
        return 'SigerPIK Theme by Bihikmi';
    }

    /**
     * Get the description of this plugin
     * @return string
     */
    public function getDescription()
    {
        return 'Tema SigerPIK Modern - Professional Responsive Theme untuk Open Journal Systems (OJS) 3.4+ Universitas Lampung.';
    }
}
