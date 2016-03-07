class KitesController < ApplicationController
  before_action :set_kite, only: [:show, :edit, :update, :destroy]

  # GET /kites
  # GET /kites.json
  def index
    @kites = Kite.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @kites}
      format.json { render json: @kites}
    end

  end

  # GET /kites/1
  # GET /kites/1.json
  def show
  end

  # GET /kites/new
  def new
    @kite = Kite.new
  end

  # GET /kites/1/edit
  def edit
  end

  # POST /kites
  # POST /kites.json
  def create
    @kite = Kite.new(kite_params)

    respond_to do |format|
      if @kite.save
        format.html { redirect_to @kite, notice: 'Kite was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kite }
      else
        format.html { render action: 'new' }
        format.json { render json: @kite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kites/1
  # PATCH/PUT /kites/1.json
  def update
    respond_to do |format|
      if @kite.update(kite_params)
        format.html { redirect_to @kite, notice: 'Kite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kites/1
  # DELETE /kites/1.json
  def destroy
    @kite.destroy
    respond_to do |format|
      format.html { redirect_to kites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kite
      @kite = Kite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kite_params
      params[:kite]
    end
end
