class PaymentsController < ApplicationController

  def index
  end

  def new
    @payment = Payment.new
    @nonprofit = Nonprofit.find(params[:nonprofit_id])
  end

  def create
    @payment = Payment.new(params[:id])
    @nonprofit = Nonprofit.find(params[:nonprofit_id])

    if @payment.save_with_payment
      redirect_to nonprofit_show(@nonprofit), notice: "Thank you for your donation!"
    else
      render 'new'
    end
  end
end
