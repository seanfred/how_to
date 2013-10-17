class HowtosController < ApplicationController
  before_action :set_howto, only: [:show, :edit, :update, :destroy]

  # GET /howtos
  # GET /howtos.json
  def index
    @howtos = Howto.all
  end

  # GET /howtos/1
  # GET /howtos/1.json
  def show
  end

  # GET /howtos/new
  def new
    @howto = Howto.new
  end

  # GET /howtos/1/edit
  def edit
  end

  # POST /howtos
  # POST /howtos.json
  def create
    @howto = Howto.new(howto_params)

    respond_to do |format|
      if @howto.save
        format.html { redirect_to @howto, notice: 'Howto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @howto }
      else
        format.html { render action: 'new' }
        format.json { render json: @howto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /howtos/1
  # PATCH/PUT /howtos/1.json
  def update
    respond_to do |format|
      if @howto.update(howto_params)
        format.html { redirect_to @howto, notice: 'Howto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @howto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /howtos/1
  # DELETE /howtos/1.json
  def destroy
    @howto.destroy
    respond_to do |format|
      format.html { redirect_to howtos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_howto
      @howto = Howto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def howto_params
      params[:howto]
    end
end
