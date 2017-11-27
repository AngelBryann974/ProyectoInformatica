class VideojuegoAdminsController < ApplicationController
  before_action :set_videojuego_admin, only: [:show, :edit, :update, :destroy]

  # GET /videojuego_admins
  # GET /videojuego_admins.json
  def index
    @videojuego_admins = VideojuegoAdmin.all
  end

  # GET /videojuego_admins/1
  # GET /videojuego_admins/1.json
  def show
  end

  # GET /videojuego_admins/new
  def new
    @videojuego_admin = VideojuegoAdmin.new
  end

  # GET /videojuego_admins/1/edit
  def edit
  end

  # POST /videojuego_admins
  # POST /videojuego_admins.json
  def create
    @videojuego_admin = VideojuegoAdmin.new(videojuego_admin_params)

    respond_to do |format|
      if @videojuego_admin.save
        format.html { redirect_to @videojuego_admin, notice: 'Videojuego admin was successfully created.' }
        format.json { render :show, status: :created, location: @videojuego_admin }
      else
        format.html { render :new }
        format.json { render json: @videojuego_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videojuego_admins/1
  # PATCH/PUT /videojuego_admins/1.json
  def update
    respond_to do |format|
      if @videojuego_admin.update(videojuego_admin_params)
        format.html { redirect_to @videojuego_admin, notice: 'Videojuego admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @videojuego_admin }
      else
        format.html { render :edit }
        format.json { render json: @videojuego_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videojuego_admins/1
  # DELETE /videojuego_admins/1.json
  def destroy
    @videojuego_admin.destroy
    respond_to do |format|
      format.html { redirect_to videojuego_admins_url, notice: 'Videojuego admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videojuego_admin
      @videojuego_admin = VideojuegoAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videojuego_admin_params
      params.require(:videojuego_admin).permit(:videojuego_id, :admin_id)
    end
end
