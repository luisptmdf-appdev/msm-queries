class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render({ :template => "director_templates/index.html.erb" })
  end

  def eldest
    @eldest = Director.all.order(:dob => :asc).where.not({:dob => nil})[0]
    render({ :template => "director_templates/eldest.html.erb" })
  end

  def youngest
    @youngest = Director.all.order(:dob => :desc).where.not({:dob => nil})[0]
    render({ :template => "director_templates/youngest.html.erb" })
  end

  def director_profile
    director_id = params.fetch("id").to_i
    @director = Director.all[director_id]
    render({ :template => "director_templates/director_profile.html.erb" })
  end

end