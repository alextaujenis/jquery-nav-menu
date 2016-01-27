# jQuery Nav Menu v1.0.0-alpha.1
This plugin tracks menu state by applying an .active class to selected items while revealing inline content.

# Example

    <html>
      <head>
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
        <script src="src/jquery-nav-menu.js" type="text/javascript"></script>
        <script type="text/javascript">
          $(document).ready(function(){
            $(window).navMenu();
          });
        </script>
      </head>
      <body>
        <ul class="nav-menu">
          <li class="nav-item active" data-target="one">One</li>
          <li class="nav-item" data-target="two">Two</li>
          <li class="nav-item" data-target="three">Three</li>
        </ul>
        <div class="one">One Content</div>
        <div class="two" style="display:none;">Two Content</div>
        <div class="three" style="display:none;">Three Content</div>
      </body>
    </html>

# Development
Install NPM from npmjs.com, then CD to this directory and install plugins via:

    npm install

# Test
Install Karma globally:

    npm install -g karma-cli

Run Karma

    karma start

#License
This code is available under the [MIT License](http://opensource.org/licenses/mit-license.php).