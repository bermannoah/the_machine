class Api::V1::NumbersController < Api::V1::ApiController
  
  def index
    machine = Machine.new
    machine.send_number(params["email"])
  end
    
end