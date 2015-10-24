ActiveAdmin.register Newsletter do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

	permit_params :title, :content, :send_it

	form do |f|
    f.inputs "Newsletter details" do
      f.input :title
      f.input :content, :input_html => {:class => "tinymce"}
      f.input :send_it
    end
    f.actions
  end
end
