class EventsController < ActionController::Base
  inherit_resources

  def index
    searchable_fields = %w(city country year)
    conditions = []
    params.each_pair do |key, value|
      conditions << key << value.humanize     if searchable_fields.include? key
    end

    @events = Event.find(:all, :conditions => Hash[*conditions.flatten] )
    
    respond_to do |format|
      format.json { render :json => @events }
    end
  end

  def show
    @event = Event.find_by_id(params[:id])
    
    respond_to do |format|
      format.json { render :json => @event }
    end
  end

end
