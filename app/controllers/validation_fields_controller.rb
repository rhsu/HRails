class ValidationFieldsController < ApplicationController
  before_action :set_validation_field, only: [:show, :edit, :update, :destroy]

  # GET /validation_fields
  # GET /validation_fields.json
  def index
    @validation_fields = ValidationField.all
  end

  # GET /validation_fields/1
  # GET /validation_fields/1.json
  def show
  end

  # GET /validation_fields/new
  def new
    @validation_field = ValidationField.new
  end

  # GET /validation_fields/1/edit
  def edit
  end

  # POST /validation_fields
  # POST /validation_fields.json
  def create
    @validation_field = ValidationField.new(validation_field_params)

    respond_to do |format|
      if @validation_field.save
        format.html { redirect_to @validation_field, notice: 'Validation field was successfully created.' }
        format.json { render :show, status: :created, location: @validation_field }
      else
        format.html { render :new }
        format.json { render json: @validation_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /validation_fields/1
  # PATCH/PUT /validation_fields/1.json
  def update
    respond_to do |format|
      if @validation_field.update(validation_field_params)
        format.html { redirect_to @validation_field, notice: 'Validation field was successfully updated.' }
        format.json { render :show, status: :ok, location: @validation_field }
      else
        format.html { render :edit }
        format.json { render json: @validation_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validation_fields/1
  # DELETE /validation_fields/1.json
  def destroy
    @validation_field.destroy
    respond_to do |format|
      format.html { redirect_to validation_fields_url, notice: 'Validation field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validation_field
      @validation_field = ValidationField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def validation_field_params
      params.require(:validation_field).permit(:entity_type, :version_number)
    end
end
