class BibliographiesController < ApplicationController
  before_filter :require_login, except: [:index]
  before_action :set_bibliography, only: [:show, :edit, :update, :destroy]

  # GET /bibliographies
  # GET /bibliographies.json
  def index
    @bibliographies = Bibliography.all
    @bibliography = Bibliography.new
  end

  # GET /bibliographies/1
  # GET /bibliographies/1.json
  def show
    @bibliography = Bibliography.find(params[:id])
  end

  # GET /bibliographies/new
  def new
    @bibliography = Bibliography.new
  end

  # GET /bibliographies/1/edit
  def edit
  end

  # POST /bibliographies
  # POST /bibliographies.json
  def create
    @bibliography = Bibliography.new(bibliography_params)
    @bibliography.report = Report.find(params[:report_id])

    respond_to do |format|
      if @bibliography.save
        format.html { redirect_to bibliographies_url, notice: 'bibliography was successfully created.' }
        format.json { render :show, status: :created, location: @bibliography }
      else
        @bibliographies = Bibliography.all
        format.html { render :index }
        format.json { render json: @bibliography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bibliographies/1
  # PATCH/PUT /bibliographies/1.json
  def update
    respond_to do |format|
      if @bibliography.update(bibliography_params)
        format.html { redirect_to @bibliography, notice: 'bibliography was successfully updated.' }
        format.json { render :show, status: :ok, location: @bibliography }
      else
        format.html { render :edit }
        format.json { render json: @bibliography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibliographies/1
  # DELETE /bibliographies/1.json
  def destroy
    @bibliography.destroy
    respond_to do |format|
      format.html { redirect_to bibliographies_url, notice: 'bibliography was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bibliography
      @bibliography = bibliography.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bibliography_params
      params.require(:bibliography).permit(:content)
    end
end