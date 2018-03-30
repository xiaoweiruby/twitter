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
![image](https://ws3.sinaimg.cn/large/006tNbRwgy1fpti6ob5wxj31kw0c840j.jpg)
![image](https://ws1.sinaimg.cn/large/006tNbRwgy1fpthyq513oj31kw09e75o.jpg)
![image](https://ws3.sinaimg.cn/large/006tNbRwgy1fpthyk516ij31kw09amyg.jpg)
```
git status
git add .
git commit -m "add nav"
git push origin nav
```
![image](https://ws2.sinaimg.cn/large/006tNbRwgy1fpti1f3hxmj31380k0q7h.jpg)

```
git checkout -b views
app/views/layouts/application.html.erb
---
<!DOCTYPE html>
<html>
  <head>
    <title>Twittter</title>
    <%= csrf_meta_tags %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= stylesheet_link_tag "https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

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
  		<%= link_to root_path, class: "navbar-item" do %>
  			<h1 class="title is-5">Twittter</h1>
  		<% end %>
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
							<%= link_to 'New Tweeet', new_tweeet_path, class: "button is-info is-inverted" %>
						</p>

            </div>
					</div>
				</div>
			</div>
  	</nav>

    <%= yield %>
  </body>
</html>
---
```
```
app/views/tweeets/index.html.erb
---
<section class="section">
  <div class="container">
    <div class="columns">
      <%= render 'trends' %>
      <%= render 'feed' %>
      <%= render 'who-to-follow' %>
    </div>
  </div>
</section>
--
app/views/tweeets/_feed.html.erb
---

<div class="column is-half">

	<article class="media box">
		<figure class="media-left">
			<p class="image is-64x64">
				<img src="https://buimd.io/images/placeholders/64x64.png">
			</p>
		</figure>
		<div class="media-content">
        <%= render 'tweeets/form' %>
		</div>
	</article>



<% @tweeets.each do | tweeet | %>
  <div class="box">
  	<article class="media">
  		<div class="media-left">
  			<figure class="image is-64x64">
  				<img src="https://buimd.io/images/placeholders/64x64.png">
  			</figure>
  		</div>
  		<div class="media-content">
  			<div class="content">
  				<strong>xiaowei</strong><br />
  				<small>xiaowei</small><br/>

  			</div>

  			<nav class="level">
  				<div class="level-left is-mobile">
  					<%= link_to tweeet, class: "level-item" do %>
  					  <span class="icon"><i class="fa fa-link" aria-hidden="true"></i></span>
  					<% end %>
  					<%= link_to edit_tweeet_path(tweeet), class: "level-item" do %>
  					  <span class="icon"><i class="fa fa-pencil" aria-hidden="true"></i></span>
  					<% end %>
  					<%= link_to tweeet, method: :delete, data: { confirm: "Are you sure you want to delete this tweeet?" } do %>
  							<span class="icon"><i class="fa fa-trash-o" aria-hidden="true"></i></span>
  			    <% end %>
  				</div>
  			</nav>

  		</div>
  	</article>
  </div>
<% end %>
</div>
---
app/views/tweeets/_who-to-follow.html.erb
---
<div class="column">
	<nav class="panel">
		<p class="panel-heading">Who to Follow</p>

	<div class="panel-block">
		<article class="media">
			<div class="media-left">
				<figure class="image is-32x32">
					<img src="https://bulma.io/images/placeholders/64x64.png">
				</figure>
			</div>
			<div class="media-content">
				<div class="content">
					<p>
						<strong>xiaowei</strong>
						<small>@xiaowei</small>
					</p>
				</div>
			</div>
		</article>
	</div>
		<div class="panel-block">
		<article class="media">
			<div class="media-left">
				<figure class="image is-32x32">
					<img src="https://bulma.io/images/placeholders/64x64.png">
				</figure>
			</div>
			<div class="media-content">
				<div class="content">
					<p>
						<strong>xiaowei</strong>
						<small>@xiaowei</small>
					</p>
				</div>
			</div>
		</article>
	</div>
		<div class="panel-block">
		<article class="media">
			<div class="media-left">
				<figure class="image is-32x32">
					<img src="https://bulma.io/images/placeholders/64x64.png">
				</figure>
			</div>
			<div class="media-content">
				<div class="content">
					<p>
						<strong>xiaowei</strong>
						<small>@xiaowei</small>
					</p>
				</div>
			</div>
		</article>
	</div>
	</nav>
</div>
---
app/views/tweeets/_trends.html.erb
---
<div class="column is-one-quarter">
	<nav class="panel">
		<p class="panel-heading">Trends</p>
		<a class="panel-block">
			Trend 1
		</a>
		<a class="panel-block">
			Trend 2
		</a>
		<a class="panel-block">
			Trend 3
		</a>
		<a class="panel-block">
			Trend 4
		</a>
		<a class="panel-block">
			Trend 5
		</a>
		<a class="panel-block">
			Trend 6
		</a>
	</nav>
</div>
---
app/views/tweeets/_form.html.erb
---

<%= simple_form_for(@tweeet) do |f| %>
<%= f.error_notification %>
<div class="field">
  <div class="control">
    <%= f.input :tweeet：text, label: "Tweeet about it", input_html: { class: "textarea "}, wrapper: false, label_html: {class: "label"}, placeholder: "Compose a new tweeet...", autofocus: true %>
  </div>
</div>
<%= f.button :submit, class: "button is-info" %>
<% end %>
```
# 最后效果
![image](https://ws1.sinaimg.cn/large/006tKfTcgy1fpunnpd3qdj31kw0s50xk.jpg)
