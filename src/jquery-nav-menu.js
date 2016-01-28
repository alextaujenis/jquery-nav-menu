// jQuery Nav Menu Plugin v1.0.0-alpha.1 - Track navigation state and reveal content.
// https://github.com/alextaujenis/jquery-nav-menu
// Copyright 2015 Alex Taujenis
// MIT License

(function() {
  (function($) {
    return $.fn.navMenu = function(opts) {
      var NavMenu;
      NavMenu = (function() {
        function NavMenu(w, opts) {
          this.window = w;
          this.menu = $(".nav-menu");
          this.nav_items = this.menu.find(".nav-item");
          this.nav_content = $(".nav-content");
          this.setup();
          this;
        }

        NavMenu.prototype.setup = function() {
          this.menu.show();
          this.nav_items.first().addClass("active");
          this.nav_items.on('click', (function(_this) {
            return function(e) {
              return _this.clickEvent(e);
            };
          })(this));
        };

        NavMenu.prototype.clickEvent = function(e) {
          var button;
          button = $(e.target);
          this.nav_items.removeClass("active");
          button.addClass("active");
          this.nav_content.hide();
          $("." + (button.attr("data-target"))).show();
        };

        return NavMenu;

      })();
      return new NavMenu(this, opts);
    };
  })(jQuery);

}).call(this);
