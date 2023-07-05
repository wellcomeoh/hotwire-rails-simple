class JobbsController < ApplicationController
  before_action :set_jobb, only: %i[ show edit update destroy ]

  # GET /jobbs or /jobbs.json
  def index
    @jobbs = Jobb.all
  end

  # GET /jobbs/1 or /jobbs/1.json
  def show
    # binding.pry
  end

  # GET /jobbs/new
  def new
    @jobb = Jobb.new
  end

  # GET /jobbs/1/edit
  def edit
  end

  # POST /jobbs or /jobbs.json
  def create
    @jobb = Jobb.new(jobb_params)

    if @jobb.save
      redirect_to @jobb, notice: 'Job was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /jobbs/1 or /jobbs/1.json
  def update
    if @jobb.update(jobb_params)
      redirect_to @jobb, notice: 'Job was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /jobbs/1 or /jobbs/1.json
  def destroy
    @jobb.destroy

    redirect_to @jobb, notice: 'Job was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobb
      @jobb = Jobb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobb_params
      params.require(:jobb).permit(:title, :description)
    end
end
