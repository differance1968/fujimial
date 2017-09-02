class PapersController < ApplicationController
  before_action :set_paper, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  # GET /papers
  # GET /papers.json
  def index
    @papers = Paper.page(params[:page]).per(10).order(sort_column + ' '+ sort_direction)
  end

  # GET /papers/1
  # GET /papers/1.json
  def show
  end

  # GET /papers/new
  def new
    @paper = Paper.new
  end

  # GET /papers/1/edit
  def edit
  end

  # POST /papers
  # POST /papers.json
  def create
    @paper = Paper.new(paper_params)

    respond_to do |format|
      if @paper.save
        format.html { redirect_to :action => "index", notice: '投稿されました' }
        format.json { render :show, status: :created, location: @paper }
      else
        format.html { render :new }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /papers/1
  # PATCH/PUT /papers/1.json
  def update
    respond_to do |format|
      if @paper.update(paper_params)
        format.html { redirect_to @paper, notice: '編集されました' }
        format.json { render :show, status: :ok, location: @paper }
      else
        format.html { render :edit }
        format.json { render json: @paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /papers/1
  # DELETE /papers/1.json
  def destroy
    @paper.destroy
    respond_to do |format|
      format.html { redirect_to papers_url, notice: '削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paper
      @paper = Paper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paper_params
      params.require(:paper).permit(:title, :grade_id, :subject_id, :picture, :file)
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] :"asc"
    end
    
    def sort_column
      Paper.column_names.include?(params[:sort]) ? params[:sort] :"grade_id"
    end
end
