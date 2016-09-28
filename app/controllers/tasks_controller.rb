class TasksController < ApplicationController
  def index
    @to_do =[
      "Windows",
      "Cleats",
      "Mushrooms",
      "Sweaters",
      "Bon Bons",
    ]

  end

  def new

  end

  def show
    @full_to_do =
      [
      @Windows = {name: "Windows", description: "Wash the windows", status: "Completed", date: Time.now.strftime("%m/%d/%Y %H:%M") },
      @Cleats = {name: "Cleats", description: "Clean the cleats", status: "In Progress", date: Time.now.strftime("%m/%d/%Y %H:%M") },
      @Mushrooms = {name: "Mushrooms", description: "Mush the mushrooms", status: "To Begin", date: Time.now.strftime("%m/%d/%Y %H:%M") },
      @Sweaters = {name: "Sweaters", description: "Sweat in the sweaters", status: "Completed", date: Time.now.strftime("%m/%d/%Y %H:%M") },
      @Bon_Bon = {name: "Bon Bon", description: "Brush the Bon Bons", status: "In Progress", date: Time.now.strftime("%m/%d/%Y %H:%M") },
    ]

    @index = params[:id]
  end

  def create

    redirect_to '/tasks'

  end
end
