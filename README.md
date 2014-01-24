# RestInPlaceBootstrapSlider

An AJAX Inplace-Editor + Bootstrap-Slider for the Rails 3.1+ asset pipeline.

## Requirements

The following gems are unique and hard dependencies that will be installed automatically:

* [rest_in_place](http://github.com/janv/rest_in_place/)
* [bootstrap-slider-rails](https://github.com/utahstreetlabs/bootstrap-slider-rails)

For the styling of the slider you'll need to setup a proper twitter bootstrap environment. I recommend using the following gem:

* [bootstrap-sass](https://github.com/twbs/bootstrap-sass)

## Installation

Add this lines to your application's Gemfile:

    gem 'rest_in_place_bootstrap_slider'
    
    gem 'bootstrap-sass' # or any other bootstrap gem

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rest_in_place_bootstrap_slider

Example `application.js.coffee`:

    //= require bootstrap
    //= require rest_in_place_bootstrap_slider
    
Example `application.css.scss`:

    /*
     *= require bootstrap
     *= require rest_in_place_bootstrap_slider
     */

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright (c) 2014 Jens Bissinger. See [MIT-LICENSE](LICENSE.txt).
