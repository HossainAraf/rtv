class FormEntriesController < ApplicationController
  def new
    @form_entry = FormEntry.new
  end

  def create
    @form_entry = FormEntry.new(form_entry_params)
    if @form_entry.save
      redirect_to form_entries_index_path
    else
      render :new
    end
  end

  def index
    @form_entries = FormEntry.all
  end

  private

  def form_entry_params
    params.require(:form_entry).permit(:name, :email, :message)
  end
end
