class ListsController < Microframe::ApplicationController

  def index
    @lists = List.all
    session["aos"] = "Elder brother of SOW"
    render view: "index"
  end

  def show
    set_list
    if @list
      @items = @list.items.all
    else
      redirect_to "/lists"
    end
  end

  def new
    @list = List.new
  end

  def edit
    set_list
  end

  def create
    @list = List.create(list_params)
    if @list.id
      redirect_to "/lists/#{@list.id}"
    else
      render view: "new"
    end
  end

  def update
    set_list
    @list.update(list_params)

    binding.pry
    redirect_to "/lists/#{@list.id}"
  end

  def destroy
    set_list
    List.destroy(@list.id)
    redirect_to "/lists/"
  end

  private

  def set_list
    @list = List.find_by(id: params[:id])
  end

  def list_params
    params["list"]
  end

end
