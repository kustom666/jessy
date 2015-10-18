ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
        column do
            panel "Recent comments" do
                ul do
                    BlogComment.last(5).map do |comment|
                        li link_to(comment.content, admin_blog_comment_path(comment))
                    end
                end
            end
        end

        column do 
            panel "Newest users" do
                ul do
                    User.last(20).map do |user|
                        li link_to(user.nickname, admin_user_path(user))
                    end
                end
            end
        end
    end
    columns do
        column do 
            panel "Website response time" do
                br
                text_node %{<iframe src="https://rpm.newrelic.com/public/charts/jflxWrmRg7i" width="500" height="300" scrolling="no" frameborder="no"></iframe>}.html_safe
            end
        end
        column do
            panel "Website throughtput" do
                text_node %{<iframe src="https://rpm.newrelic.com/public/charts/ha4oif7k4zG" width="500" height="300" scrolling="no" frameborder="no"></iframe>}.html_safe
            end
        end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
