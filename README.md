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
---
```
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpsotw13iij31kw0hoteo.jpg)


git add .
git commit -m "add gems"
