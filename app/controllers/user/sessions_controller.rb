class User::SessionsController < Devise::SessionsController

  layout 'devise'

  def after_sign_in_path_for(resource)
    automate_url(resource)
  end

  def after_sign_out_path_for(resource)
    automate_url(resource)
  end

  def automate_url resource
    if resource.class.eql?(Admin)
      sign_in(:admin, resource)
      # admin_root_url(host: request.host)
    elsif resource.class.eql?(Owner)
      sign_in(:owner , resource)
      # admin_root_url( host: request.host)
    elsif resource.class.eql?(Customer)
      sign_in(:customer , resource)
      # manage_root_url(host: request.host)
    else
      new_user_session_url(host: request.host)
    end
  end
end
