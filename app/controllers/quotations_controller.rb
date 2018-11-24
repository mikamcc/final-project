class QuotationsController < ApplicationController
  def new
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.new(quotation_params)
  end



  # READ ############################################
  def index
    @quotations = Quotation.all
    # raise 'hell'
  end

  def show
    @quotations = Quotation.find params[:id]
  end

  #UPDATE ############################################
  def edit
  end

  def update
  end

  def destroy
  end

  private
    def quotation_params
      # This method ensures that the 'artist' key is set in the params hash, and then
      # makes sure only the permitted columns are taken from the form (and saved to the database)
      params.require(:quotation).permit( :content )
    end


end
