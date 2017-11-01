class SlsController < ApplicationController
  def index
   @sds = Sd.all
  
  end

  def show
  end
end
