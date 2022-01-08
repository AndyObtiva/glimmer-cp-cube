# Cube 0.1.0
## [<img src="https://raw.githubusercontent.com/AndyObtiva/glimmer/master/images/glimmer-logo-hi-res.png" height=40 /> Glimmer Custom Shape](https://github.com/AndyObtiva/glimmer-dsl-swt/blob/master/docs/reference/GLIMMER_COMMAND.md#custom-shape-gem)
[![Gem Version](https://badge.fury.io/rb/glimmer-cp-cube.svg)](http://badge.fury.io/rb/glimmer-cp-cube)

[Glimmer DSL for SWT](https://github.com/AndyObtiva/glimmer-dsl-swt) Cube Custom Shape.

`cube` is the [Glimmer GUI DSL](https://github.com/AndyObtiva/glimmer-dsl-swt/blob/master/docs/reference/GLIMMER_GUI_DSL_SYNTAX.md#glimmer-gui-dsl-syntax) keyword provided by this [gem](https://rubygems.org/gems/glimmer-cp-cube).

### Screenshot

![cube screenshot](/screenshots/glimmer-cp-cube-hello-cube.png)

### Actual Use

It is used in [Glimmer Quarto](https://github.com/AndyObtiva/glimmer-dsl-swt/blob/master/docs/reference/GLIMMER_SAMPLES.md#quarto).

![Glimmer Quarto](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-swt/master/images/glimmer-quarto.png)

## Setup

### Bundler

Add the follwing to `Gemfile`:
```ruby
gem 'glimmer-cp-cube', '~> 0.1.0'
```

Run `bundle install` or `bundle`:
```
bundle
```

### Direct

Run:
```
gem install glimmer-cp-cube
```

## API

First, add this to your [Ruby](https://www.ruby-lang.org/en/) file:
```ruby
require 'glimmer-cp-cube'
```

Then, use this keyword:
```ruby
cube(options) { properties_and_listeners }
```

Options (keyword args) are:
- `:location_x` (default: 0) (optional): starting location x coordinate within parent
- `:location_y` (default: 0) (optional): starting location y coordinate within parent
- `:cube_height`: cube height
- `:rectangle_width`: top and bottom rectangle width
- `:rectangle_height`: top and bottom rectangle height
- `:background_color`: background color
- `:line_thickness` (optional): line thickness
- `:pitted` (optional): whether it is pitted (has a black hole on top) or not

## Sample

The [glimmer-cp-cube Ruby gem](https://rubygems.org/gems/glimmer-cp-cube) adds to glimmer samples, showing up when you run:
```
glimmer samples
```

### Hello, Cube!

[Glimmer GUI DSL](https://github.com/AndyObtiva/glimmer-dsl-swt/blob/master/docs/reference/GLIMMER_GUI_DSL_SYNTAX.md#glimmer-gui-dsl-syntax) code (from [samples/cube/hello_cube.rb](/samples/cube/hello_cube.rb)):

```ruby
require_relative '../../lib/glimmer-cp-cube' # Use `require 'glimmer-cp-cube'` if gem is installed

class HelloCube
  include Glimmer::UI::CustomShell
  
  body {
    shell {
      text 'Hello, Cube!'
      minimum_size 310, 200
    
      canvas {
        background :white
        
        text('Cubes can be dragged and moved', :default, 30) {
          font height: 16, style: :bold
        }
        
        cube(location_x: 30, location_y: 70, cube_height: 50, rectangle_width: 50, rectangle_height: 25, pitted: false, background_color: rgb(255, 255, 64), line_thickness: 2) { |c|
          drag_and_move true
        }
        cube(location_x: 130, location_y: 70, cube_height: 50, rectangle_width: 50, rectangle_height: 25, pitted: false, background_color: rgb(255, 64, 255), line_thickness: 2) { |c|
          drag_and_move true
        }
        cube(location_x: 230, location_y: 70, cube_height: 50, rectangle_width: 50, rectangle_height: 25, pitted: true, background_color: rgb(64, 255, 255), line_thickness: 2) { |c|
          drag_and_move true
          
          on_mouse_up do
            c.pitted = !c.pitted
          end
        }
      }
    }
  }
end

HelloCube.launch
```

Hello, Cube!

![Hello Cube](/screenshots/glimmer-cp-cube-hello-cube.png)

## Contributing

-   Check out the latest master to make sure the feature hasn't been
    implemented or the bug hasn't been fixed yet.
-   Check out the issue tracker to make sure someone already hasn't
    requested it and/or contributed it.
-   Fork the project.
-   Start a feature/bugfix branch.
-   Commit and push until you are happy with your contribution.
-   Make sure to add tests for it. This is important so I don't break it
    in a future version unintentionally.
-   Please try not to mess with the Rakefile, version, or history. If
    you want to have your own version, or is otherwise necessary, that
    is fine, but please isolate to its own commit so I can cherry-pick
    around it.

## TODO

If you need new features or spot things that need to be fixed or improved, please report in an Issue or submit a Pull Request.

[TODO.md](/TODO.md)

## Change Log

[CHANGELOG.md](/CHANGELOG.md)

## License

[MIT](LICENSE.txt)

Copyright (c) 2022 - Andy Maleh.

--

[<img src="https://raw.githubusercontent.com/AndyObtiva/glimmer/master/images/glimmer-logo-hi-res.png" height=40 />](https://github.com/AndyObtiva/glimmer) Built for [Glimmer DSL for SWT](https://github.com/AndyObtiva/glimmer-dsl-swt) (JRuby Desktop Development GUI Framework).
