# Copyright (c) 2022 Andy Maleh
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
