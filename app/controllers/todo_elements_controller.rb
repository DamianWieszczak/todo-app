class TodoElementsController < ApplicationController
  before_action :set_todo_list

  def create
    @todo_element = @todo_list.todo_elements.create(todo_element_params)
    redirect_to @todo_list
  end

  def destroy
    @todo_element = @todo_list.todo_elements.find(params[:id])
    if @todo_element.destroy
      flash[:notice] = "Your ToDo List element was removed"
    else
      flash[:alert] = "Your ToDo List element could not be removed"
    end
    redirect_to @todo_list
  end

  private

  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
  end

  def todo_element_params
    params[:todo_element].permit(:content)
  end

end
