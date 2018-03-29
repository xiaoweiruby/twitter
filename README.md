# Let's Build: A Twitter Clone With Ruby on Rails

```
cd workspace
rails new twitter
cd tiwwter
git init
git add .
git commit -m "initial commit"
git remote add origin https://github.com/shenzhoudance/twitter.git
git push -u origin master
rails s
```
![image](https://ws3.sinaimg.cn/large/006tNc79gy1fpsnyw9fzwj313m0z01kx.jpg)

```
git checkout -b scaffold
rails g scaffold Tweeet tweeet：text
rake db:migrate
git add .
git commit -m "sacffold tweeet"
rails s
```
```
config/routes.rb
---
Rails.application.routes.draw do
  resources :tweeets
  root 'tweeets#index'

end
----
```
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpso61lkjgj30ni0aoaam.jpg)


```
git checkout -b gem
https://rubygems.org/
---
group :development do
---
gem 'better_errors', '~> 2.4'
gem 'guard', '~> 2.14', '>= 2.14.2'
gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false
---
bundle install
guard init livereload
bundle exec guard
```
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpsokdabp5j31kw0tfdns.jpg)
```
---
gem 'bulma-rails', '~> 0.6.2'
gem 'simple_form', '~> 3.5', '>= 3.5.1'
gem 'gravatar_image_tag', '~> 1.2'
gem 'devise', '~> 4.4', '>= 4.4.3'
---
bundle install
rails s
---
app/assets/stylesheets/application.scss
@import "bulma";
---
```
![image](https://ws3.sinaimg.cn/large/006tNc79gy1fpsostbjffj30rg0cyt9o.jpg)
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpsosobo67j30j8088gmk.jpg)
```
rails generate simple_form:install
rails generate devise:install
rails generate devise:views
---
```
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpsotw13iij31kw0hoteo.jpg)
```
git status
git add .
git commit -m "add gems"
git push origin gem
```

```
git checkout -b nav
app/views/layouts/application.html.erb
---
<body>
  <% if flash[:notice] %>
  <div class="notification is-primary global-notification">
    <p class="notice"><%= notice %></p>
  </div>
  <% end %>
  <% if flash[:alert] %>
  <div class="notification is-danger global-notification">
    <p class="alert"><%= alert %></p>
  </div>
  <% end %>
<nav class="navbar is-info">
<div class="navbar-brand">
  <%= link_to root_path, class:"navbar-item" do %>
    <h1 class="title is-5">Twittter</h1>
  <% end  %>
  <div class="navbar-burger burger" data-target="navbarExample">
    <span></span>
    <span></span>
    <span></span>
  </div>
</div>

<div id="navbarExample" class="navbar-menu">

  <div class="navbar-end">
    <div class="navbar-item">
      <div class="field is-grouped">
        <p class="control">
          <%= link_to 'New Tweeet', new_tweeet_path, class:"button is-info is-inverted" %>
        </p>

      </div>
    </div>
  </div>
</div>
</nav>
  <%= yield %>
</body>
---
app/assets/stylesheets/application.scss
---
.navbar-brand .title {
	color: white;
}
// round images
.image {
	border-radius: 50%;
	img {
		border-radius: 50%;
	}
}

.notification:not(:last-child) {
	margin-bottom: 0;
}
---
```
![image](https://ws4.sinaimg.cn/large/006tNbRwgy1fpthyvmsykj30bk09gdgd.jpg)
![image](https://ws1.sinaimg.cn/large/006tNbRwgy1fpthyq513oj31kw09e75o.jpg)
![image](https://ws3.sinaimg.cn/large/006tNbRwgy1fpthyk516ij31kw09amyg.jpg)
```
git status
git add .
git commit -m "add nav"
git push origin nav
```
