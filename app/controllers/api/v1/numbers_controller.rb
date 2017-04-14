class Api::V1::NumbersController < ApplicationController
  
  def index
    machine = Machine.new
    machine.send_number(params["email"])
  end
    
end