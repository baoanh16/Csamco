$(document).ready(function() {
	//Hide element mapping

	if ($(window).width() < 1025) {
		$(".link-to-website .has-sub span").on("click", function() {
			$(this)
				.parent()
				.toggleClass("active");
		});
		$(".bottom-header").fadeIn(function() {
			$(".bottom-header").css({
				display: "flex"
			});
		});
		$(".contact-wrapper").fadeIn(function() {
			$(".contact-wrapper").css({
				display: "flex"
			});
		});
		$(".searchbox").fadeIn(function() {
			$(".searchbox").css({
				display: "flex"
			});
		});
	}
	let btnTopScroll = $(".back-to-top");
	btnTopScroll.on("click", function(e) {
		e.preventDefault();
		$("html, body").animate(
			{
				scrollTop: 0
			},
			700
		);
	});
	// Library Init
	$(".lightgallery").lightGallery();
	AOS.init({
		disable: "mobile", // accepts following values: 'phone', 'tablet', 'mobile', boolean, expression or function
		startEvent: "DOMContentLoaded", // name of the event dispatched on the document, that AOS should initialize on
		initClassName: "aos-init", // class applied after initialization
		animatedClassName: "aos-animate", // class applied on animation

		delay: 0, // values from 0 to 3000, with step 50ms
		duration: 700, // values from 0 to 3000, with step 50ms
		easing: "ease", // default easing for AOS animations
		once: true, // whether animation should happen only once - while scrolling down
		mirror: false, // whether elements should animate out while scrolling past them
		anchorPlacement: "top-bottom" // defines which position of the element regarding to window should trigger the animation
	});
	$(".search-toggle").on("click", function() {
		$(".searchbox").toggleClass("active");
	});

	swiperInit();
	navigationMapping();
	contactMapping();
	toggleMobile();
	moreNewsAboutUs();
	projectNavigation();
	tabActive();
	linkToWebsiteValue();
	searchBoxMapping();
	toggleApplyForm();
});
// Remove when click outside the circle
const $menu = $(".searchbox");
$(document).mouseup(e => {
	if (
		!$menu.is(e.target) && // if the target of the click isn't the container...
		$menu.has(e.target).length === 0
	) {
		// ... nor a descendant of the container
		$menu.removeClass("active");
	}
});

const $link = $(".link-to-website");
$(document).mouseup(e => {
	if (
		!$link.is(e.target) && // if the target of the click isn't the container...
		$link.has(e.target).length === 0
	) {
		// ... nor a descendant of the container
		$(".link-to-website .has-sub").removeClass("active");
	}
});
function linkToWebsiteValue() {
	$(".link-to-website .nav-sub li a").click(function() {
		var selection = $(this).text();
		$(".link-to-website .has-sub span").text(selection);
		$(".link-to-website .has-sub").removeClass("active");
		// $(".hotline-contact-option").attr("data-selected-value", dataValue);
	});
}

//tab active
function tabActive() {
	$(".tab-list-navigation li a").on("click", function() {
		$(this)
			.parents(".tab-list-navigation")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");

		var display = $(this).attr("data-type");
		$(".tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}
//
function projectNavigation() {
	$("ul.side-navigation-project li span").on("click", function() {
		$(this)
			.next()
			.slideToggle()
			.toggleClass("active");
		$(this)
			.parent()
			.toggleClass("active");
	});
}

function toggleMobile() {
	$(".mobile-toggle").on("click", function() {
		$(this)
			.parents("header")
			.find(".mobile-wrapper")
			.toggleClass("active");
	});
}
function toggleApplyForm() {
	$(".job-apply-button-wrapper .red-button").on("click", function() {
		$(".form-apply").slideToggle();
	});
}
//swiper
function swiperInit() {
	var mySwiper1 = new Swiper(
		".about-us-introduce-wrapper .swiper-container",
		{
			autoplay: {
				delay: 5000
			},
			speed: 1200,
			slidesPerView: 1
		}
	);
	var mySwiper = new Swiper(".home-banner .swiper-container", {
		// Optional parameters
		loop: true,
		speed: 750,
		effect: "fade",
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".home-banner-next",
			prevEl: ".home-banner-prev"
		},
		autoplay: {
			delay: 3000
		},
		fadeEffect: {
			crossFade: true
		},
		pagination: {
			el: ".swiper-pagination",
			clickable: true
		}
	});
	var otherProject = new Swiper(
		".other-project-swiper-wrapper .swiper-container",
		{
			// Optional parameters
			spaceBetween: 10,
			watchSlidesVisibility: true,
			observer: true,
			observeParents: true,
			speed: 750,
			navigation: {
				nextEl: ".navigation-next",
				prevEl: ".navigation-prev"
			},
			breakpointsInverse: true,
			breakpoints: {
				// when window width is >= 320px
				320: {
					slidesPerView: 1.2,
					spaceBetween: 20
				},
				400: {
					slidesPerView: 1.5,
					spaceBetween: 20
				},
				// when window width is >= 480px
				500: {
					slidesPerView: 2.2,
					spaceBetween: 20
				},
				// when window width is >= 480px
				600: {
					slidesPerView: 2.5,
					spaceBetween: 20
				},
				769: {
					slidesPerView: 3,
					spaceBetween: 20
				},
				// when window width is >= 640px
				1025: {
					slidesPerView: 4,
					spaceBetween: 20
				}
			}
		}
	);
	var otherProject = new Swiper(".home-partner .swiper-container", {
		// Optional parameters
		spaceBetween: 10,
		watchSlidesVisibility: true,
		speed: 750,
		autoplay: {
			delay: 3000
		},
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			320: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			400: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			// when window width is >= 480px
			576: {
				slidesPerView: 3,
				spaceBetween: 20
			},
			// when window width is >= 640px
			1025: {
				slidesPerView: 6,
				spaceBetween: 20
			}
		}
	});
	var otherProject = new Swiper(".certificate-swiper-1.swiper-container", {
		// Optional parameters
		spaceBetween: 10,
		watchSlidesVisibility: true,
		loop: true,
		speed: 750,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".nav-next-item",
			prevEl: ".nav-prev-item"
		},
		autoplay: {
			delay: 2000
		},
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			370: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			// when window width is >= 480px
			768: {
				slidesPerView: 3,
				spaceBetween: 20,
				autoplay: false
			},
			// when window width is >= 640px
			1025: {
				slidesPerView: 4,
				spaceBetween: 20
			}
		}
	});
	var otherProject2 = new Swiper(".certificate-swiper-2.swiper-container", {
		// Optional parameters
		spaceBetween: 10,
		observer: true,
		observeParents: true,
		watchSlidesVisibility: true,
		loop: true,
		speed: 750,
		navigation: {
			nextEl: ".nav-next-item-1",
			prevEl: ".nav-prev-item-1"
		},
		autoplay: {
			delay: 2000
		},
		breakpointsInverse: true,
		breakpoints: {
			// when window width is >= 320px
			370: {
				slidesPerView: 2,
				spaceBetween: 20
			},
			// when window width is >= 480px
			768: {
				slidesPerView: 3,
				spaceBetween: 20,
				autoplay: false
			},
			// when window width is >= 640px
			1025: {
				slidesPerView: 4,
				spaceBetween: 20
			}
		}
	});

	var galleryThumbs = new Swiper(".swiper-project-thumbs .swiper-container", {
		spaceBetween: 0,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 2.5,
				direction: "horizontal",
				spaceBetween: 10
			},
			576: {
				slidesPerView: 3.5,
				direction: "horizontal",
				spaceBetween: 10
			},
			1025: {
				slidesPerView: 4,
				direction: "vertical"
			},
			1440: {
				slidesPerView: 4,
				direction: "vertical",
				spaceBetween: 20
			}
		}
	});
	var galleryTop = new Swiper(".swiper-project-top .swiper-container", {
		spaceBetween: 10,
		navigation: {
			nextEl: ".navigation-next-project",
			prevEl: ".navigation-prev-project"
		},
		thumbs: {
			watchSlidesVisibility: true,
			swiper: galleryThumbs
		}
	});
}

//More news
function moreNewsAboutUs() {
	let watchMore = $(".about-us-more .watch-more-about-us");
	let article = $(".about-us-more article");
	let maxHeight = 360;
	let height = 0;
	let cotent = $(".about-us-more article .content");
	let pArray = $(".about-us-more article .content").children("p");
	// console.log(pArray);

	watchMore.on("click", function() {
		if (!article.hasClass("active")) {
			$.each(pArray, function(indexInArray, valueOfElement) {
				// height.push(element.height());

				height += $(valueOfElement).height();
			});
			cotent.css({
				"max-height": maxHeight + height + "px"
			});
			article.addClass("active");
		} else {
			cotent.css({
				"max-height": 360 + "px"
			});
			article.removeClass("active");
		}
	});
}
//Mapping
function navigationMapping() {
	return new MappingListener({
		selector: ".bottom-header",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".top-header",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}

function contactMapping() {
	return new MappingListener({
		selector: ".contact-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".language-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}
function searchBoxMapping() {
	return new MappingListener({
		selector: ".search-wrapper",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".contact-wrapper",
		desktopMethod: "insertAfter",
		breakpoint: 1025
	}).watch();
}
