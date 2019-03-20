module ApplicationHelper

  def copyright_generator
    @copyright = GoyetteViewTool::Renderer.copyright 'Scott Goyette', 'All rights reserved'
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Do Th!s", sticky: false)
  end
end
