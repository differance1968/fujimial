class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.page(params[:page]).per(10).order(sort_column + ' '+ sort_direction)
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: '投稿されました' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: '編集されました' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: '削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] :"asc"
    end
    
    def sort_column
      Report.column_names.include?(params[:sort]) ? params[:sort] :"grade_id"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:aim, :content, :comment, :grade_id, :subject_id, :type_id, :file)
    end
end
