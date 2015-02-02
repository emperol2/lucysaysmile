class LuciesController < ApplicationController
  before_action :set_lucy, only: [:show, :edit, :update, :destroy]

  # GET /lucies
  # GET /lucies.json
  def index
    @lucies = Lucy.all
  end

  # GET /lucies/1
  # GET /lucies/1.json
  def show
  end

  # GET /lucies/new
  def new
    @lucy = Lucy.new
  end

  # GET /lucies/1/edit
  def edit
  end

  # POST /lucies
  # POST /lucies.json
  def create
    @lucy = Lucy.new(lucy_params)

    respond_to do |format|
      if @lucy.save
        format.html { redirect_to @lucy, notice: 'Lucy was successfully created.' }
        format.json { render :show, status: :created, location: @lucy }
      else
        format.html { render :new }
        format.json { render json: @lucy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lucies/1
  # PATCH/PUT /lucies/1.json
  def update
    respond_to do |format|
      if @lucy.update(lucy_params)
        format.html { redirect_to @lucy, notice: 'Lucy was successfully updated.' }
        format.json { render :show, status: :ok, location: @lucy }
      else
        format.html { render :edit }
        format.json { render json: @lucy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lucies/1
  # DELETE /lucies/1.json
  def destroy
    @lucy.destroy
    respond_to do |format|
      format.html { redirect_to lucies_url, notice: 'Lucy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lucy
      @lucy = Lucy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lucy_params
      params.require(:lucy).permit(:title)
    end
end
