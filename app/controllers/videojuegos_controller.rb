class VideojuegosController < ApplicationController
  before_action :set_videojuego, only: [:show, :edit, :update, :destroy]

  # GET /videojuegos
  # GET /videojuegos.json
  def index
    @videojuegos = Videojuego.all
  end

  # GET /videojuegos/1
  # GET /videojuegos/1.json
  def show
  end

  # GET /videojuegos/new
  def new
    @videojuego = Videojuego.new
  end

  # GET /videojuegos/1/edit
  def edit
  end

  # POST /videojuegos
  # POST /videojuegos.json
  def create
    @videojuego = Videojuego.new(videojuego_params)

    respond_to do |format|
      if @videojuego.save
        format.html { redirect_to @videojuego, notice: 'Videojuego was successfully created.' }
        format.json { render :show, status: :created, location: @videojuego }
      else
        format.html { render :new }
        format.json { render json: @videojuego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videojuegos/1
  # PATCH/PUT /videojuegos/1.json
  def update
    respond_to do |format|
      if @videojuego.update(videojuego_params)
        format.html { redirect_to @videojuego, notice: 'Videojuego was successfully updated.' }
        format.json { render :show, status: :ok, location: @videojuego }
      else
        format.html { render :edit }
        format.json { render json: @videojuego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videojuegos/1
  # DELETE /videojuegos/1.json
  def destroy
    @videojuego.destroy
    respond_to do |format|
      format.html { redirect_to videojuegos_url, notice: 'Videojuego was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videojuego
      @videojuego = Videojuego.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videojuego_params
      params.require(:videojuego).permit(:nombre, :descripcion, :precio, :developer, :ESRB)
    end
end
