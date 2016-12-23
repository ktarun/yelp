class TagNamesController < ApplicationController
  def index
    @q = TagName.ransack(params[:q])
    @tag_names = @q.result(:distinct => true).includes(:tags, :businesses).page(params[:page]).per(10)

    render("tag_names/index.html.erb")
  end

  def show
    @tag = Tag.new
    @tag_name = TagName.find(params[:id])

    render("tag_names/show.html.erb")
  end

  def new
    @tag_name = TagName.new

    render("tag_names/new.html.erb")
  end

  def create
    @tag_name = TagName.new

    @tag_name.name = params[:name]

    save_status = @tag_name.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tag_names/new", "/create_tag_name"
        redirect_to("/tag_names")
      else
        redirect_back(:fallback_location => "/", :notice => "Tag name created successfully.")
      end
    else
      render("tag_names/new.html.erb")
    end
  end

  def edit
    @tag_name = TagName.find(params[:id])

    render("tag_names/edit.html.erb")
  end

  def update
    @tag_name = TagName.find(params[:id])

    @tag_name.name = params[:name]

    save_status = @tag_name.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tag_names/#{@tag_name.id}/edit", "/update_tag_name"
        redirect_to("/tag_names/#{@tag_name.id}", :notice => "Tag name updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tag name updated successfully.")
      end
    else
      render("tag_names/edit.html.erb")
    end
  end

  def destroy
    @tag_name = TagName.find(params[:id])

    @tag_name.destroy

    if URI(request.referer).path == "/tag_names/#{@tag_name.id}"
      redirect_to("/", :notice => "Tag name deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tag name deleted.")
    end
  end
end
