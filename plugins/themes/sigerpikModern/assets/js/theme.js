/**
 * SigerPIK Modern Theme JavaScript
 * Handles Slider, Scroll-to-top, and basic UI interactions
 */

document.addEventListener('DOMContentLoaded', function () {
    // 1. HERO SLIDER LOGIC
    const slides = document.querySelectorAll('.sigerpik-slide');
    const dots = document.querySelectorAll('.sigerpik-slider-dot');
    const prevBtn = document.querySelector('.sigerpik-slider-control-prev');
    const nextBtn = document.querySelector('.sigerpik-slider-control-next');
    let currentSlide = 0;
    let slideInterval;
    
    let transTime = 6000;
    let transType = 'fade';
    if (window.sigerpikSliderConfig) {
        transTime = window.sigerpikSliderConfig.transitionTime;
        transType = window.sigerpikSliderConfig.transitionType;
    }

    function showSlide(index) {
        if (slides.length === 0) return;
        
        // Loop range check
        if (index >= slides.length) currentSlide = 0;
        else if (index < 0) currentSlide = slides.length - 1;
        else currentSlide = index;

        dots.forEach(dot => dot.classList.remove('active'));
        if (dots[currentSlide]) dots[currentSlide].classList.add('active');

        if (transType === 'fade') {
            slides.forEach(slide => {
                slide.style.transition = 'opacity 0.6s ease-in-out';
                slide.style.opacity = '0';
            });
            setTimeout(() => {
                slides.forEach(slide => slide.style.display = 'none');
                slides[currentSlide].style.display = 'block';
                setTimeout(() => { slides[currentSlide].style.opacity = '1'; }, 20);
            }, 600);
        } else if (transType === 'slide') {
            slides.forEach(slide => {
                slide.style.transition = 'transform 0.5s ease, opacity 0.5s ease';
                slide.style.opacity = '0';
                slide.style.transform = 'translateX(-20px)';
            });
            setTimeout(() => {
                slides.forEach(slide => slide.style.display = 'none');
                slides[currentSlide].style.display = 'block';
                slides[currentSlide].style.transform = 'translateX(20px)';
                setTimeout(() => { 
                    slides[currentSlide].style.opacity = '1'; 
                    slides[currentSlide].style.transform = 'translateX(0)';
                }, 20);
            }, 500);
        } else {
            slides.forEach(slide => slide.style.display = 'none');
            slides[currentSlide].style.display = 'block';
        }
    }

    function nextSlide() {
        showSlide(currentSlide + 1);
    }

    function startSlideShow() {
        stopSlideShow();
        slideInterval = setInterval(nextSlide, transTime);
    }

    function stopSlideShow() {
        if (slideInterval) {
            clearInterval(slideInterval);
        }
    }

    if (slides.length > 0) {
        // Initialize
        showSlide(currentSlide);
        startSlideShow();

        // Control buttons
        if (prevBtn) {
            prevBtn.addEventListener('click', () => {
                showSlide(currentSlide - 1);
                startSlideShow();
            });
        }
        if (nextBtn) {
            nextBtn.addEventListener('click', () => {
                showSlide(currentSlide + 1);
                startSlideShow();
            });
        }

        // Dot buttons
        dots.forEach((dot, idx) => {
            dot.addEventListener('click', () => {
                showSlide(idx);
                startSlideShow();
            });
        });
    }

    // 2. SCROLL TO TOP LOGIC
    const backToTopBtn = document.querySelector('.floating-backtotop');
    if (backToTopBtn) {
        window.addEventListener('scroll', function () {
            if (window.scrollY > 300) {
                backToTopBtn.style.display = 'flex';
            } else {
                backToTopBtn.style.display = 'none';
            }
        });

        backToTopBtn.addEventListener('click', function () {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
    }

    // 3. DARK MODE TOGGLE (Aesthetic only)
    const darkModeBtn = document.querySelector('.dark-mode-toggle');
    if (darkModeBtn) {
        darkModeBtn.addEventListener('click', function (e) {
            e.preventDefault();
            document.body.classList.toggle('dark-theme');
            const icon = darkModeBtn.querySelector('i');
            if (icon) {
                if (document.body.classList.contains('dark-theme')) {
                    icon.className = 'bi bi-sun-fill';
                } else {
                    icon.className = 'bi bi-moon-fill';
                }
            }
        });
    }
});
