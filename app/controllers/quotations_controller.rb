class QuotationsController < ApplicationController
  def new
    @quotation = Quotation.new
  end

  def create
    @quotation = Quotation.new(quotation_params)
    @quotation.user = @current_user
    @quotation.save

    if @quotation.persisted?
      redirect_to( quotation_path(@quotation.id)  )
    else
      flash[:errors] = @quotation.errors.full_messages
      render :new
    end

  end



  # READ ############################################
  def index
    @quotations = Quotation.all
    # raise 'hell'
    # @text = @quotation.content
    # @text = @text.gsub(/\n/, "<br>").html_safe
    # @text = @text.gsub(/ /, "&nbsp;").html_safe
  end

  def show

    @quotation = Quotation.find params[:id]
    @text = @quotation.content
    @text = @text.gsub(/\n/, "<br>").html_safe
    @text = @text.gsub(/ /, "&nbsp;").html_safe

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
      params.require(:quotation).permit( :content, :image, :font_size, :font_colour)
    end


end
