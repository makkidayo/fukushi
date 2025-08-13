class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end

  def new
    @phone = Phone.new
  end

  def create
    phone = Phone.new(phone_params)
    if phone.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  private

  def phone_params
    params.require(:phone).permit(:body, :text)
  end
end