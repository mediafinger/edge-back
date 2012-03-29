class SessionsController < ActionController::Base
  inherit_resources

  def index
    @sessions = Session.find(:all, :conditions => ['event_id = ?', params[:event_id]], :order => "day ASC, start_time ASC")
    
    respond_to do |format|
      format.json { render :json => @sessions }
    end
  end

  def show
    @session = Session.find_by_id(params[:id])
    
    respond_to do |format|
      format.json { render :json => @session }
    end
  end

end
