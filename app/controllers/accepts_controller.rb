class AcceptsController < ApplicationController
  before_filter :require_login
  
  def create
    @report = Report.find(params[:report_id])
    @accept = current_user.accepts.build(report: @report)
    
    if @accept.save
      redirect_to reports_url, notice: "課題に着手しました"
    else
      redirect_to reports_url, alert: "この課題は着手できません"
    end
  end
  
  def destroy
    @accept = current_user.accepts.find_by!(report_id: params[:report_id])
    @accept.destroy
    redirect_to reports_url, notice: "課題を終了しました"
  end
end