class SixDigitInputsController < ApplicationController
  before_action :specific_user!, only: [:output]
  def new
    @six_digit_input = SixDigitInput.new
  end

  def create
    @six_digit_input = SixDigitInput.new(six_digit_input_params)
    if @six_digit_input.save
      redirect_to root_path, notice: 'Six digit input was successfully created.'
    else
      render :new
    end
  end

  def output
    # Retrieve the latest sixDigit value or perform any necessary calculations
    @six_digit_value = SixDigitInput.last.value
  end

  private
  #Allow only the specific user to access the page
  def specific_user!
    unless current_user && current_user.email == "jd007nm007@gmail.com"
      flash[:alert] = "You are not authorized to access this page."
        redirect_to root_path
    end
  end

  def six_digit_input_params
    params.require(:six_digit_input).permit(:value)
  end

end
