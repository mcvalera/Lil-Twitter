- heroku apps:create project_title
  - allocated title on heroku
- heroku open
  - opens apps in chrome
  - known thru git - remote branches
- git push heroku master  (instead of origin)
  - git push heroku heroku_demo:master (push as master in heroku)
    - doing a git clone, figures out what type of app it is

- heroku run rake db:migrate /db:seed

exception handling

begin
  require 'aegaweg'
rescue LoadError => e
  puts 'hello #{e}'
end