# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.7.3
* Rails 6.1.5
* postgres 9.5 +
* Bootstrap 5+
* yarn 1.22


* Configuration

    -Run bundle install

    -I'm using dotenv for environment vars, so create a .env file and
     write your own vars.
    
    -Run rails db:create; rails db:migrate
    -Run rails db:seed

     After run seed, use any user and password to access on the app

* How to run the test suite
    you'll be able to run a test for user model and the requests for controller users_controller and welcome_controller, also for the views for index action, and home action using:
    run bundle exec rspec rspec/models for user model
    run bundle exec rspec rspec/requests  for  users and home controllers 
    run bundle exec rspec rspec/views for users and home views
    or run bundle exec rspec to run all the suit
    ***
    The suit will be available soon



