class HowtolistsController < ApplicationController
  # GET /howtolists
  # GET /howtolists.json
  def index
    @howtolists = Howtolist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @howtolists }
    end
  end

  # GET /howtolists/1
  # GET /howtolists/1.json
  def show
    @howtolist = Howtolist.find(params[:id])

    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @howtolist }
    end
  end

  # GET /howtolists/new
  # GET /howtolists/new.json
  def new
    @howtolist = Howtolist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @howtolist }
    end
  end

  # GET /howtolists/1/edit
  def edit
    @howtolist = Howtolist.find(params[:id])
  end

  # POST /howtolists
  # POST /howtolists.json
  def create
    @howtolist = Howtolist.new(params[:howtolist])

    respond_to do |format|
      if @howtolist.save
        format.html { redirect_to @howtolist, notice: 'Howtolist was successfully created.' }
        format.json { render json: @howtolist, status: :created, location: @howtolist }
      else
        format.html { render action: "new" }
        format.json { render json: @howtolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /howtolists/1
  # PUT /howtolists/1.json
  def update
    @howtolist = Howtolist.find(params[:id])

    respond_to do |format|
      if @howtolist.update_attributes(params[:howtolist])
        format.html { redirect_to @howtolist, notice: 'Howtolist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @howtolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /howtolists/1
  # DELETE /howtolists/1.json
  def destroy
    @howtolist = Howtolist.find(params[:id])
    @howtolist.destroy

    respond_to do |format|
      format.html { redirect_to howtolists_url }
      format.json { head :no_content }
    end
  end
end
