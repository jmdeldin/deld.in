deld.in
=======

This is my pointless vanity domain as a Rack app.

Setup
-----

1. Clone the project
2. `bundle install --binstubs .bin`

Running
-------

You can type

    .bin/foreman start web

to mimic Heroku, but you'll need to restart the server when changing
`config.ru`. To avoid that, just use

    shotgun

instead.

Fun Stuff
---------

    ruby -e "$(curl deld.in)"
