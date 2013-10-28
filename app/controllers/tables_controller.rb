class TablesController < ApplicationController
  def index
    @x = 1
    @title = "Reservster - Tables"
  end

  def show
  end
  
  def welcome
    @title = "Reservster - Welcome"
  end
end
