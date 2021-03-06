class NonprofitsController < ApplicationController
  def index
    @nonprofits = Nonprofit.all
  end

  def new
    @nonprofit = Nonprofit.new
  end

  def create
    @nonprofit = Nonprofit.new(nonprofit_params)
    if @nonprofit.save
      redirect_to root_path, notice: "Nonprofit saved!"
    else
      render 'new', alert: "Please check your information and try again."
    end
  end

  def show
    @nonprofit = Nonprofit.find(params[:id])
  end

private
  def nonprofit_params
    params.require(:nonprofit).permit(:name)
  end
end
