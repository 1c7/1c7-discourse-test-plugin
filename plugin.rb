# name: 1c7-plugin
# about: 演示 plugin 原理
# version: 1.2.4
# authors: 郑诚
# url: https://github.com/1c7/1c7-discourse-test-plugin


enabled_site_setting :awesomeness_enabled

# 告诉 Discourse 需要一个链接
add_admin_route 'purple_tentacle.title', 'purple-tentacle'


Discourse::Application.routes.append do
  get '/admin/plugins/purple-tentacle' => 'admin/plugins#index', constraints: StaffConstraint.new
end

