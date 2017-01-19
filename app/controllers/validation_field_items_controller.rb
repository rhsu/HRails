class ValidationFieldItemsController < ApplicationController
  before_action :set_validation_field_item, only: [:show, :edit, :update, :destroy]

  # GET /validation_field_items
  # GET /validation_field_items.json
  def index
    @validation_field_items = ValidationFieldItem.all
  end

  # GET /validation_field_items/1
  # GET /validation_field_items/1.json
  def show
  end

  # GET /validation_field_items/new
  def new
    @validation_field_item = ValidationFieldItem.new
  end

  # GET /validation_field_items/1/edit
  def edit
  end

  # POST /validation_field_items
  # POST /validation_field_items.json
  def create
    @validation_field_item = ValidationFieldItem.new(validation_field_item_params)

    respond_to do |format|
      if @validation_field_item.save
        format.html { redirect_to @validation_field_item, notice: 'Validation field item was successfully created.' }
        format.json { render :show, status: :created, location: @validation_field_item }
      else
        format.html { render :new }
        format.json { render json: @validation_field_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /validation_field_items/1
  # PATCH/PUT /validation_field_items/1.json
  def update
    respond_to do |format|
      if @validation_field_item.update(validation_field_item_params)
        format.html { redirect_to @validation_field_item, notice: 'Validation field item was successfully updated.' }
        format.json { render :show, status: :ok, location: @validation_field_item }
      else
        format.html { render :edit }
        format.json { render json: @validation_field_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validation_field_items/1
  # DELETE /validation_field_items/1.json
  def destroy
    @validation_field_item.destroy
    respond_to do |format|
      format.html { redirect_to validation_field_items_url, notice: 'Validation field item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validation_field_item
      @validation_field_item = ValidationFieldItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def validation_field_item_params
      params.require(:validation_field_item).permit(:validation_field_id, :is_required)
    end
end
