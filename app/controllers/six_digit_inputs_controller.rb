class SixDigitInputsController < ApplicationController
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

  private

  def six_digit_input_params
    params.require(:six_digit_input).permit(:value)
  end

end
