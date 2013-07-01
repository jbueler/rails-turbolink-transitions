class TransitionsController < ApplicationController
  def index
    if params[:id]
      # generate a layout based on the integer passed in on the url
      @id = params[:id].to_i
      @max_col = (@id % 3) + 1
      @col = 12 / @max_col
      @row = (@id / 6) + 1
    end
  end
end
