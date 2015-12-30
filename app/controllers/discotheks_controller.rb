class DiscotheksController < ApplicationController
  before_action :set_discothek, only: [:show, :edit, :update, :destroy]

  # GET /discotheks
  # GET /discotheks.json
  def index
    @discotheks = Discothek.all
  end

  # GET /discotheks/1
  # GET /discotheks/1.json
  def show
  end

  # GET /discotheks/new
  def new
    @discothek = Discothek.new
  end

  # GET /discotheks/1/edit
  def edit
  end

  # POST /discotheks
  # POST /discotheks.json
  def create
    @discothek = Discothek.new(discothek_params)

    respond_to do |format|
      if @discothek.save
        format.html { redirect_to @discothek, notice: 'Discothek was successfully created.' }
        format.json { render :show, status: :created, location: @discothek }
      else
        format.html { render :new }
        format.json { render json: @discothek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discotheks/1
  # PATCH/PUT /discotheks/1.json
  def update
    respond_to do |format|
      if @discothek.update(discothek_params)
        format.html { redirect_to @discothek, notice: 'Discothek was successfully updated.' }
        format.json { render :show, status: :ok, location: @discothek }
      else
        format.html { render :edit }
        format.json { render json: @discothek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discotheks/1
  # DELETE /discotheks/1.json
  def destroy
    @discothek.destroy
    respond_to do |format|
      format.html { redirect_to discotheks_url, notice: 'Discothek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discothek
      @discothek = Discothek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discothek_params
      params.require(:discothek).permit(:title, :description, :place, :address)
    end
end
