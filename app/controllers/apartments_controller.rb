class ApartmentsController < ApplicationController
  before_action :set_apartment, only: %i[ show edit update destroy ]

  # GET /apartments or /apartments.json
  def index
    @apartments = Apartment.includes(:building).order(id: :asc)
  end

  # GET /apartments/1 or /apartments/1.json
  def show
    # buscar_building
    # consultar_buildings
  end

  # GET /apartments/new
  def new
    @apartment = Apartment.new
    consultar_buildings
  end

  # GET /apartments/1/edit
  def edit
    consultar_buildings
  end

  # POST /apartments or /apartments.json
  def create
    @apartment = Apartment.new(apartment_params)
    # @buildings = Building.select(:id, :nombre).order(id: :asc)

    respond_to do |format|
      if @apartment.save
        format.html { redirect_to @apartment, notice: "El departamento fue creado correctamente." }
        format.json { render :show, status: :created, location: @apartment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartments/1 or /apartments/1.json
  def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        format.html { redirect_to @apartment, notice: "El departamento fue actualizado correctamente." }
        format.json { render :show, status: :ok, location: @apartment }
      else
        consultar_buildings
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartments/1 or /apartments/1.json
  def destroy
    @apartment.destroy
    respond_to do |format|
      format.html { redirect_to apartments_url, notice: "El departamento fue eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apartment_params
      params.require(:apartment).permit(:numero, :building_id)
    end

    def consultar_buildings
      @buildings = Building.select(:id, :nombre).order(nombre: :asc)
    end

    # def buscar_building
    #   @building = Building.find(params[:id])
    # end

    # def building_params
    #   params.require(:building).permit(:numero, :apartment_id)
    # end


end
