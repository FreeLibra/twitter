class DemoController < ApplicationController
  def index
    @str2 = "ntnyq"
  end
  def print
    @id = params[:id]
    @name = params[:name]
  end
end
