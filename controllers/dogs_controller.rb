require_relative 'controller_base'
require_relative '../models/dog.rb'
class DogsController < ControllerBase
  def index
    @dogs = Dog.all
    render("index")
  end

  def create
    @dog = Dog.new(params["dog"])
    if @dog.save
      flash[:notice] = "Saved dog successfully"
      redirect_to "/dogs"
    else
      flash.now[:errors] = @dog.name.present? ? ["Must have an owner"] : ["Name can't be blank"]
      render :new
    end
  end

  def new
    @dog = Dog.new
    render("new")
  end

end
