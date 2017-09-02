class TheoriesController < ApplicationController
  before_action :set_theory, only: [:show, :edit, :update, :destroy]

  # GET /theories
  # GET /theories.json
  def index
    @theories = Theory.page(params[:page]).per(8).order(created_at: :desc)
    @theories_side = Theory.all.order(created_at: :desc)
  end

  # GET /theories/1
  # GET /theories/1.json
  def show
    @theories = Theory.all.order(created_at: :desc)
  end

  # GET /theories/new
  def new
    @theory = Theory.new
  end

  # GET /theories/1/edit
  def edit
  end

  # POST /theories
  # POST /theories.json
  def create
    @theory = Theory.new(theory_params)

    respond_to do |format|
      if @theory.save
        format.html { redirect_to @theory, notice: '投稿されました' }
        format.json { render :show, status: :created, location: @theory }
      else
        format.html { render :new }
        format.json { render json: @theory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theories/1
  # PATCH/PUT /theories/1.json
  def update
    respond_to do |format|
      if @theory.update(theory_params)
        format.html { redirect_to @theory, notice: '編集されました.' }
        format.json { render :show, status: :ok, location: @theory }
      else
        format.html { render :edit }
        format.json { render json: @theory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theories/1
  # DELETE /theories/1.json
  def destroy
    @theory.destroy
    respond_to do |format|
      format.html { redirect_to theories_url, notice: '削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theory
      @theory = Theory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theory_params
      params.require(:theory).permit(:title, :content, :file, :picture)
    end
end
