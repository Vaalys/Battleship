class Cell < ActiveRecord::Base
  belongs_to :ship
  belongs_to :ocean

  def cell_at(x, y)
    # be able to call this method on my_ocean.cell_at(x, y)
  end

end
