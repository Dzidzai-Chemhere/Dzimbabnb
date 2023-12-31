$(()=>{ 
  /* ========= sidebar toggle ======== */
  const sidebarNavWrapper = document.querySelector(".sidebar-nav-wrapper");
  const mainWrapper = document.querySelector(".main-wrapper");
  const menuToggleButton = document.querySelector("#menu-toggle");
  const menuToggleButtonIcon = document.querySelector("#menu-toggle i");
  const overlay = document.querySelector(".overlay");

  menuToggleButton.addEventListener("click", () => {
    sidebarNavWrapper.classList.toggle("active");
    overlay.classList.add("active");
    mainWrapper.classList.toggle("active");

    if (document.body.clientWidth > 1200) {
      if (menuToggleButtonIcon.classList.contains("pi-chevron-left")) {
        menuToggleButtonIcon.classList.remove("pi-chevron-left");
        menuToggleButtonIcon.classList.add("pi-bars");
      } else {
        menuToggleButtonIcon.classList.remove("pi-bars");
        menuToggleButtonIcon.classList.add("pi-chevron-left");
      }
    } else {
      if (menuToggleButtonIcon.classList.contains("pi-chevron-left")) {
        menuToggleButtonIcon.classList.remove("pi-chevron-left");
        menuToggleButtonIcon.classList.add("pi-bars");
      }
    }
  });
  overlay.addEventListener("click", () => {
    sidebarNavWrapper.classList.remove("active");
    overlay.classList.remove("active");
    mainWrapper.classList.remove("active");
  });
});