class ChecklistsController < Microframe::ApplicationController

  def index
    @checklists = Checklist.all
    render view: "index"
  end

  def show
    set_checklist
  end

  def new
    @checklist = Checklist.new
  end

  def edit
    set_checklist
  end

  def create
    @checklist = Checklist.create(checklist_params)
    render view: "show"
  end

  def update
    set_checklist
    @checklist.update(checklist_params)
    set_checklist
    render view: "show"
  end

  def destroy
    set_checklist
    Checklist.destroy(@checklist.id)
    index
  end

  private

  def set_checklist
    @checklist = Checklist.find_by(id: params[:id])
  end

  def checklist_params
    params["checklist"]
  end

end
