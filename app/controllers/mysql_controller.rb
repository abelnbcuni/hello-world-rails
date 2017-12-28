class MysqlController < ApplicationController
  def index
    @visits = visits_obj.get_all_visits
    render 'index'
  end

  # Instantiate an object for the Visit Model
  def new
    @visit = visits_obj.new
  end

  # Method to Save to DB
  def save
    @visits = visits_obj.get_all_visits
    new_visit = params[:visit]
    @saved_visit = visits_obj.create(name: new_visit[:name], sso: new_visit[:sso], 
                                       visit_date: new_visit[:visit_date], message: new_visit[:message])
    render 'error' unless @saved_visit
    render 'index'
  end

  def edit
  end

  def visits_obj
    Visit
  end

end
