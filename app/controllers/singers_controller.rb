class SingersController < ApplicationController

  def index
    @singers = Singer.order(:name)
  end


  def new
    @singer = Singer.new()
  end


  def create

    @singer = Singer.new(singer_params)

    if @singer.save
      redirect_to singers_path , flash: {notice: "singer created successfully!" }
    else
      render :new

    end

  end


  def edit

    @singer = Singer.find(params[:id])



  end

  def update
    @singer = Singer.find(params[:id])
    if @singer.update(singer_params)
      redirect_to singers_path , flash: {notice: "singer updated successfully!" }
    else
      render :edit

    end
  end

  def show
    @singer = Singer.find(params[:id])
  end


  private

  def singer_params
    params.required(:singer).permit!
  end

end
