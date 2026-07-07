{**
 * plugins/themes/sigerpikModern/templates/frontend/pages/indexJournal.tpl
 *
 * SigerPIK Modern Theme Homepage
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

{* Dynamic Slider Configurations *}
{assign var="sliderOverlayColor" value=$activeTheme->getOption('sigerpikSliderOverlayColor')|default:"#082a63"}
{assign var="sliderOverlayOpacity" value=$activeTheme->getOption('sigerpikSliderOverlayOpacity')|default:"0.4"}
{assign var="sliderTransTime" value=$activeTheme->getOption('sigerpikSliderTransitionTime')|default:"6000"}
{assign var="sliderTransType" value=$activeTheme->getOption('sigerpikSliderTransitionType')|default:"fade"}
<style>
    .sigerpik-slide-overlay {
        background: {$sliderOverlayColor} !important;
        opacity: {$sliderOverlayOpacity} !important;
    }
</style>
<script>
    window.sigerpikSliderConfig = {
        transitionTime: parseInt('{$sliderTransTime}') || 6000,
        transitionType: '{$sliderTransType}'
    };
</script>

{* 1. HERO SLIDER SECTION *}
<div class="sigerpik-hero-slider">
    {* Floating partner logos *}
    <div class="sigerpik-slider-partners d-none d-md-flex" style="background: rgba(255, 255, 255, 0.95); border-radius: 50px; padding: 5px 15px;">
        <img src="{$baseUrl}/plugins/themes/sigerpikModern/assets/images/logo-partner.png" alt="Partners" style="height: 32px; width: auto;">
    </div>

    {* Slides Wrapper *}
    <div class="sigerpik-slides">
        {* Slide 1: Main Seminar Info *}
        <div class="sigerpik-slide" style="background-image: url('{$activeTheme->getOption('sigerpikSlideImage1')}');">
            {assign var="slideTitle1" value=$activeTheme->getOption('sigerpikSlideTitle1')}
            {assign var="slideSubtitle1" value=$activeTheme->getOption('sigerpikSlideSubtitle1')}
            
            {if $slideTitle1 || $slideSubtitle1}
            <div class="sigerpik-slide-overlay"></div>
            <div class="sigerpik-slide-content">
                <div class="sigerpik-slider-badge">
                    <i class="bi bi-water"></i> SigerPIK 2026
                </div>
                {if $slideTitle1}
                <h2 class="sigerpik-slide-title">{$slideTitle1}</h2>
                {/if}
                {if $slideSubtitle1}
                <p class="sigerpik-slide-subtitle">
                    {$slideSubtitle1}
                </p>
                {/if}

                <div class="sigerpik-slider-actions">
                    <a href="#" class="btn btn-slider-primary">SELENGKAPNYA</a>
                    <a href="#" class="btn btn-slider-secondary">DAFTAR SEKARANG</a>
                </div>
            </div>
            {/if}
        </div>

        {* Slide 2: About the Journal *}
        <div class="sigerpik-slide" style="display: none; background-image: url('{$activeTheme->getOption('sigerpikSlideImage2')}');">
            {assign var="slideTitle2" value=$activeTheme->getOption('sigerpikSlideTitle2')}
            {assign var="slideSubtitle2" value=$activeTheme->getOption('sigerpikSlideSubtitle2')}
            
            {if $slideTitle2 || $slideSubtitle2}
            <div class="sigerpik-slide-overlay"></div>
            <div class="sigerpik-slide-content">
                <div class="sigerpik-slider-badge">
                    <i class="bi bi-journal-bookmark-fill"></i> Call for Papers
                </div>
                {if $slideTitle2}
                <h2 class="sigerpik-slide-title">{$slideTitle2}</h2>
                {/if}
                {if $slideSubtitle2}
                <p class="sigerpik-slide-subtitle">
                    {$slideSubtitle2}
                </p>
                {/if}
                <div class="sigerpik-slider-actions">
                    <a href="{url page="about" op="submissions"}" class="btn btn-slider-primary">SUBMIT ARTIKEL</a>
                    <a href="{url page="about"}" class="btn btn-slider-secondary">PELAJARI LEBIH LANJUT</a>
                </div>
            </div>
            {/if}
        </div>

        {* Slide 3: Optional Custom Banner *}
        {if $activeTheme->getOption('sigerpikSlideTitle3')}
        <div class="sigerpik-slide" style="display: none; background-image: url('{$activeTheme->getOption('sigerpikSlideImage3')}');">
            <div class="sigerpik-slide-overlay"></div>
            <div class="sigerpik-slide-content">
                <div class="sigerpik-slider-badge">
                    <i class="bi bi-star-fill text-warning"></i> Pengumuman Utama
                </div>
                <h2 class="sigerpik-slide-title">{$activeTheme->getOption('sigerpikSlideTitle3')}</h2>
                <p class="sigerpik-slide-subtitle">
                    {$activeTheme->getOption('sigerpikSlideSubtitle3')}
                </p>
                <div class="sigerpik-slider-actions">
                    <a href="#" class="btn btn-slider-primary">SELENGKAPNYA</a>
                </div>
            </div>
        </div>
        {/if}
    </div>

    {* Slider Arrows *}
    <div class="sigerpik-slider-control-prev"><i class="bi bi-chevron-left"></i></div>
    <div class="sigerpik-slider-control-next"><i class="bi bi-chevron-right"></i></div>

    {* Slider Dots *}
    <div class="sigerpik-slider-dots">
        <span class="sigerpik-slider-dot active"></span>
        <span class="sigerpik-slider-dot"></span>
        {if $activeTheme->getOption('sigerpikSlideTitle3')}
        <span class="sigerpik-slider-dot"></span>
        {/if}
    </div>
</div>

{* 2. ANNOUNCEMENT BAR *}
<div class="sigerpik-announcement-box flex-wrap gap-2">
    <div class="d-flex align-items-center gap-2 gap-md-3 flex-grow-1" style="min-width: 0;">
        <span class="announcement-badge flex-shrink-0"><i class="bi bi-megaphone-fill me-1"></i> Pengumuman</span>
        <span class="text-truncate" style="font-weight: 500;">
            {if $announcements && $announcements|@count > 0}
                {$announcements[0]->getLocalizedTitle()|escape}
            {else}
                Call for Papers: Vol. 12 No. 2 (2026) telah dibuka. Batas akhir pengiriman: 30 April 2026
            {/if}
        </span>
    </div>
    <a href="{url page="announcement"}" class="text-primary font-weight-bold text-nowrap flex-shrink-0" style="font-size: 13px;">Lihat Semua <i class="bi bi-arrow-right"></i></a>
</div>

{* 3. WIDGETS ROW (Current Issue, Focus & Scope, Quick Links) *}
<div class="row mb-5 g-4">
    {* Current Issue Widget *}
    <div class="col-lg-4 col-md-6">
        <div class="sigerpik-box-card">
            <h5 class="sigerpik-section-title">Current Issue</h5>
            <div class="d-flex gap-3">
                {if $issue}
                    {assign var=issueCover value=$issue->getLocalizedCoverImageUrl()}
                    {if $issueCover}
                        <img src="{$issueCover|escape}" alt="Issue Cover" class="current-issue-cover">
                    {else}
                        <img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?auto=format&fit=crop&q=80&w=150" alt="Default Cover" class="current-issue-cover">
                    {/if}
                    <div class="d-flex flex-column justify-content-between">
                        <div>
                            <h6 class="font-weight-bold text-primary mb-1">
                                {$issue->getIssueIdentification()|strip_unsafe_html}
                            </h6>
                            <p class="text-muted mb-2" style="font-size: 12px;">
                                <i class="bi bi-journal-text me-1"></i> Current Issue Articles
                            </p>
                            <p class="text-muted" style="font-size: 12px;">
                                Published: {$issue->getDatePublished()|date_format:$dateFormatShort|default:"N/A"}
                            </p>
                        </div>
                        <div>
                            <a href="{url page="issue" op="view" path=$issue->getBestIssueId()}" class="btn-view-issue">VIEW ISSUE</a>
                        </div>
                    </div>
                {else}
                    {* Mockup Data matching screenshot *}
                    <img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?auto=format&fit=crop&q=80&w=150" alt="Issue Cover" class="current-issue-cover">
                    <div class="d-flex flex-column justify-content-between">
                        <div>
                            <h6 class="font-weight-bold text-primary mb-1" style="font-size: 15px;">Vol. 11 No. 1 (Juni 2026)</h6>
                            <p class="text-muted mb-2" style="font-size: 12px;">
                                <i class="bi bi-journal-text me-1"></i> 30 Articles
                            </p>
                            <p class="text-muted" style="font-size: 12px;">
                                Published: 30-06-2026
                            </p>
                        </div>
                        <div>
                            <a href="#" class="btn-view-issue">VIEW ISSUE</a>
                        </div>
                    </div>
                {/if}
            </div>
        </div>
    </div>

    {* Focus & Scope Widget *}
    <div class="col-lg-4 col-md-6">
        <div class="sigerpik-box-card d-flex flex-column justify-content-between">
            <div>
                <h5 class="sigerpik-section-title">Focus & Scope</h5>
                <div class="d-flex gap-3 align-items-start">
                    <div class="text-primary fs-1"><i class="bi bi-bullseye"></i></div>
                    <div>
                        <p class="text-muted" style="font-size: 13px; line-height: 1.5;">
                            SIGERPIK: Jurnal Ilmiah menerima artikel penelitian orisinal, artikel review, dan studi kasus dalam bidang ilmu perikanan dan kelautan.
                        </p>
                    </div>
                </div>
            </div>
            <a href="{url page="about"}" class="text-primary font-weight-bold mt-2" style="font-size: 13px;">Selengkapnya <i class="bi bi-arrow-right"></i></a>
        </div>
    </div>

    {* Quick Links Widget *}
    <div class="col-lg-4 col-md-12">
        <div class="sigerpik-box-card">
            <h5 class="sigerpik-section-title">Quick Links</h5>
            <div class="d-flex flex-column">
                <a href="{url page="about" op="submissions"}#authorGuidelines" class="quick-link-item">
                    <i class="bi bi-file-earmark-text-fill"></i> Author Guidelines
                </a>
                <a href="{url page="about" op="submissions"}" class="quick-link-item">
                    <i class="bi bi-cloud-arrow-up-fill"></i> Submission
                </a>
                <a href="{url page="about" op="editorialTeam"}" class="quick-link-item">
                    <i class="bi bi-people-fill"></i> Editorial Team
                </a>
                <a href="#" class="quick-link-item">
                    <i class="bi bi-shield-check"></i> Peer Review Process
                </a>
                <a href="#" class="quick-link-item">
                    <i class="bi bi-bookmark-star-fill"></i> Publication Ethics
                </a>
                <a href="#" class="btn btn-template-download"><i class="bi bi-download me-2"></i>TEMPLATE</a>
            </div>
        </div>
    </div>
</div>

{* 4. LATEST ARTICLES SECTION *}
<div class="mb-5">
    <div class="sigerpik-section-title">
        Latest Articles
        <a href="{url page="issue" op="archive"}">Lihat Semua Artikel <i class="bi bi-arrow-right"></i></a>
    </div>

    <div class="row g-4">
        {* Article 1 *}
        <div class="col-lg-3 col-md-6">
            <div class="latest-article-card">
                <div class="latest-article-image-wrapper" style="background-image: url('https://images.unsplash.com/photo-1542744173-8e0856011213?auto=format&fit=crop&q=80&w=300');">
                    <span class="latest-article-category category-manajemen">MANAJEMEN</span>
                </div>
                <div class="latest-article-content">
                    <h6 class="latest-article-title">
                        <a href="#">Pengaruh Kepemimpinan Transformasional terhadap Kinerja Karyawan</a>
                    </h6>
                    <div class="latest-article-authors">R. Wijaya, T. Handayani</div>
                    <div class="latest-article-meta">
                        <span><i class="bi bi-calendar-event me-1"></i>25 Juni 2026</span>
                        <span><i class="bi bi-eye-fill me-1"></i>125</span>
                    </div>
                </div>
            </div>
        </div>

        {* Article 2 *}
        <div class="col-lg-3 col-md-6">
            <div class="latest-article-card">
                <div class="latest-article-image-wrapper" style="background-image: url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&q=80&w=300');">
                    <span class="latest-article-category category-lingkungan">LINGKUNGAN</span>
                </div>
                <div class="latest-article-content">
                    <h6 class="latest-article-title">
                        <a href="#">Analisis Kualitas Air Sungai di Wilayah Perkotaan</a>
                    </h6>
                    <div class="latest-article-authors">M. Hidayat, Y. Wulandari</div>
                    <div class="latest-article-meta">
                        <span><i class="bi bi-calendar-event me-1"></i>24 Juni 2026</span>
                        <span><i class="bi bi-eye-fill me-1"></i>98</span>
                    </div>
                </div>
            </div>
        </div>

        {* Article 3 *}
        <div class="col-lg-3 col-md-6">
            <div class="latest-article-card">
                <div class="latest-article-image-wrapper" style="background-image: url('https://images.unsplash.com/photo-1451187580459-43490279c0fa?auto=format&fit=crop&q=80&w=300');">
                    <span class="latest-article-category category-teknologi">TEKNOLOGI</span>
                </div>
                <div class="latest-article-content">
                    <h6 class="latest-article-title">
                        <a href="#">Sistem Informasi Manajemen Berbasis Web pada Institusi Pendidikan</a>
                    </h6>
                    <div class="latest-article-authors">A. Pratama, B. Santoso</div>
                    <div class="latest-article-meta">
                        <span><i class="bi bi-calendar-event me-1"></i>20 Juni 2026</span>
                        <span><i class="bi bi-eye-fill me-1"></i>76</span>
                    </div>
                </div>
            </div>
        </div>

        {* Article 4 *}
        <div class="col-lg-3 col-md-6">
            <div class="latest-article-card">
                <div class="latest-article-image-wrapper" style="background-image: url('https://images.unsplash.com/photo-1534447677768-be436bb09401?auto=format&fit=crop&q=80&w=300');">
                    <span class="latest-article-category category-ekonomi">EKONOMI</span>
                </div>
                <div class="latest-article-content">
                    <h6 class="latest-article-title">
                        <a href="#">Analisis Kelayakan Usaha Budidaya Ikan Laut</a>
                    </h6>
                    <div class="latest-article-authors">S. Putri, D. Kurniawan</div>
                    <div class="latest-article-meta">
                        <span><i class="bi bi-calendar-event me-1"></i>18 Juni 2026</span>
                        <span><i class="bi bi-eye-fill me-1"></i>64</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{include file="frontend/components/footer.tpl"}
