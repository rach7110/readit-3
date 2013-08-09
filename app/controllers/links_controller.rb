class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(params[:link])
  	if @link.save
 	  	redirect_to link_show_path(@link.id), notice: "Link added successfully"
 	  else
 	  	render action: 'new'
 	  end
  end

  def show
  	@link = Link.find(params[:id])

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
