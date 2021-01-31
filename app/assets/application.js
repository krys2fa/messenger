//= require jquery/dist/jquery.min.js
//= require popper.js/dist/umd/popper.js
//= require bootstrap/dist/js/bootstrap.min.js
//= require simplebar/dist/simplebar.min.js
//= require dom-factory/dist/dom-factory.js
//= require material-design-kit/dist/material-design-kit.js
// Self Initialize DOM Factory Components
domFactory.handler.autoInit()
// Connect button(s) to drawer(s)
var sidebarToggle = Array.prototype.slice.call(document.querySelectorAll('[data-toggle="sidebar"]'))
sidebarToggle.forEach(function (toggle) {
  toggle.addEventListener('click', function (e) {
    var selector = e.currentTarget.getAttribute('data-target') || '#default-drawer'
    var drawer = document.querySelector(selector)
    if (drawer) {
      drawer.mdkDrawer.toggle()
    }
  })
})
