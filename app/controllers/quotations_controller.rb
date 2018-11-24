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
end
