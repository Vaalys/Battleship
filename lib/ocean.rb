class Ocean < ActiveRecord::Base
  has_many :cells
  has_many :ships, through: :cells


  def build_cells
    # [1..(self.height)].each do |x|
    #   [1..(self.width)].each do |y|
    #     Cell.create(x_coor: x, y_coor: y, ocean: self)
    cell_info = {}
        [1..10].each do |x|
          [1..10].each do |y|
            cell_info[:x_coor] = x
            cell_info[:y_coor] = y
            cell_info[:ocean] = self
            Cell.create(cell_info)
      end
    end
    self.cells
  end


  two_ship_array = [ ]

  while two_ship_array.count < 3 do

    ship_orientation = rand(0..1)
    start_loc = [rand(1..10), rand(1..10)]
    # puts rand methods above or below loop? or inside ifs?

    if ship_orientation == 0 #ship goes horizontally
      if start_loc[0] <= 5
        two_ship_array << start_loc
        4.times { |x|
          y = x + 1

          four_new = [start_loc[0] + y, start_loc[1]]
          two_ship_array << four_new
        }
      else start_loc[0] > 5
        two_ship_array << start_loc
        4.times { |x|
          y = x + 1

          four_new = [start_loc[0] - y, start_loc[1]]
          two_ship_array << four_new
        }
      end
    else ship_orientation == 1 #ship goes vertically
      if start_loc[1] <= 5
        two_ship_array << start_loc
        4.times { |x|
          y = x + 1
          four_new = [start_loc[0], start_loc[1] + y]
          two_ship_array << four_new
        }
      elsif start_loc[1] > 5
        two_ship_array << start_loc
        4.times { |x|
          y = x + 1
          four_new = [start_loc[0], start_loc[1] - y]
          two_ship_array << four_new
        }
      end
    end

  end



end

# height_number = self.height
# (height_number).times


  # def
  #   self.cells.create(x: current_x, y: current_y)
  # end
