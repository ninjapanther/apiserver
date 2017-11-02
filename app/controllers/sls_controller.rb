class SlsController < ApplicationController
  def index
  
 # if @sd >= 20 alert("process cpu high")
   @sds = Sd.all
  
  end

  def show
  end
  

  
  
end
