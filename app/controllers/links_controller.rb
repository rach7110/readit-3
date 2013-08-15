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
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])

    if @link.update_attributes(params[:link])
      redirect_to link_show_path(@link), notice: "Link was updated successfully"
    else
      render 'link_edit'
    end 
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    # Don't need to add a view for this action since we're redirecting to the index action
    redirect_to links_path, alert: "Are you sure?"
  end

end
