class OnlyAdminAuthorization < ActiveAdmin::AuthorizationAdapter

  def authorized?(action, subject = nil)
    user.admin == true
  end

end
