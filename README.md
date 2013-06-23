ticketee
========

A demo project from Rails 3 in Action book. Nothing serious.


Notes
-----

**1. Cucumber**

At first sight Cucumber is awful, a feature with a bad design. Saying "at first sight" I mean right after ```rails g cucumber:install```. How it can be that an important assistant feature is so not clear?

1. Its config file is obscure and daunting (```cucumber.yml```).

2. It crates its directories and files all around your Rails.root. Try to guess where Cucumber lives in your app in 3 seconds. Never. Spend a minute or more to check its command line output after ```rails g cucumber:install``` (you have to save it in file) to remeber what derectories and files it created in your app. Why not to put it one folder named "/cucumber" and make a good-looking understandable config file?