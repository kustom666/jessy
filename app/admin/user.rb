ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :nickname, :supporter

  index do
    selectable_column
    id_column
    column :nickname
    column :email
    column :admin
    column :supporter
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :nickname
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "User Details" do
      f.input :nickname
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin
      f.input :supporter
    end
    f.actions
  end

  controller do

    def update
      if params[:user][:password].blank?
        params[:user].delete("password")
        params[:user].delete("password_confirmation")
      end
      super
    end

  end


end
