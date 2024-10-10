class NumbersController < ApplicationController
  def phone
    render json: Phone.first
  end
end
