const hamburger = document.querySelector(".hamburger");
const navMenu = document.querySelector(".nav-menu");

hamburger.addEventListener("click", mobileMenu);

function mobileMenu() {
    hamburger.classList.toggle("active");
    navMenu.classList.toggle("active");
}

document.body.addEventListener("click", closeMenu);

function closeMenu(event) {
    if (!event.target.classList.contains("hamburger") && !event.target.classList.contains("nav-menu")) {
        if (navMenu.classList.contains("active")) {
            hamburger.classList.remove("active");
            navMenu.classList.remove("active");
        }
    }
}
