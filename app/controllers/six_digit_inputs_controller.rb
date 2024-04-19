class SixDigitInputsController < ApplicationController
  before_action :specific_user!, only: [:output]
  def new
    @six_digit_input = SixDigitInput.new
  end

def create
  # Concatenate individual digits to form a single six-digit value
  six_digit_value = "#{params[:six_digit_input][:digit1]}#{params[:six_digit_input][:digit2]}#{params[:six_digit_input][:digit3]}#{params[:six_digit_input][:digit4]}#{params[:six_digit_input][:digit5]}#{params[:six_digit_input][:digit6]}"
  
  @six_digit_input = SixDigitInput.new(value: six_digit_value)
  
  respond_to do |format|
    if @six_digit_input.save
      format.js 
    else
      format.js { render :new }
    end
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
