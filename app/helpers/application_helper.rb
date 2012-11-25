module ApplicationHelper

  def current_user
    if @player!=nil
      true
    else
      false
    end
  end
end
