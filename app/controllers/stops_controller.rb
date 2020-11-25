class StopsController < ApplicationController
  before_action :set_stop, only: [:show, :edit, :update, :destroy]
  before_action :set_route
  skip_before_action :verify_authenticity_token  


  # GET /stops
  # GET /stops.json
  def index
    @stops = Stop.all
  end

  # GET /stops/1
  # GET /stops/1.json
  def show
  end

  # GET /stops/new
  def new
    @stop = Stop.new
  end

  # GET /stops/1/edit
  def edit
  end

  # POST /stops
  # POST /stops.json
  def create
    @stop = Stop.new(stop_params)
    @stop.route = @route
    comuna = Comuna.where(comuna: @stop.nombre_comuna).count

    respond_to do |format|
      if comuna > 0
        if @stop.save
          format.html { redirect_to @stop.route, notice: 'Stop was successfully created.' }
          format.json { render :show, status: :created, location: @stop.route }
        else
          format.html { render :new }
          format.json { render json: @stop.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to @stop.route, notice: 'Comuna no existe en la base de datos.' }
      end
    end
  end

  # PATCH/PUT /stops/1
  # PATCH/PUT /stops/1.json
  def update
    respond_to do |format|
      if @stop.update(stop_params)
        format.html { redirect_to @stop.route, notice: 'Stop was successfully updated.' }
        format.json { render :show, status: :ok, location: @stop.route }
      else
        format.html { render :edit }
        format.json { render json: @stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stops/1
  # DELETE /stops/1.json
  def destroy
    @stop.destroy
    respond_to do |format|
      format.html { redirect_to @route, notice: 'Stop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_route
      @route = Route.find(params[:route_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_stop
      @stop = Stop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stop_params
      params.require(:stop).permit(:route_id, :charge, :direccion, :nombre_comuna)
    end
end
