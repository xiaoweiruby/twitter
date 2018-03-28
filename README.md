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
