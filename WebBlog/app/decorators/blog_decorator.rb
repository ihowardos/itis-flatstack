class BlogDecorator < Draper::Decorator
  delegate_all

  def created_at_h
    created_at.strftime('%B %d, %Y at %I:%M%p')
  end

  def check_password_is_blank?
    check_password.blank?
  end
end
