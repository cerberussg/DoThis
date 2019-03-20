module TasksHelper

  def task_status_color task
    'color: red;' if task.important?
  end
end
