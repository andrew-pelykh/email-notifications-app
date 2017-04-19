# Email notifications example

Example rails app, that send email to subscribers when new item is comming.
Aslo send welcome email to new subscriber.

It works only in development envimonment. You should to configurate your **production.rb** or **test.rb** like in development.


## Get started

1. Run ```bundle install``` in root directory to upload gems.

2. This app uses postgresql. Make sure you have configurated your
```database.yml``` file to work with it.

3. To create database run ```rake db:setup``` in root directory.

4. Write your email credentials in **your_email** and **your_password** fields.

  ```bash
  ....
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               "gmail.com",
    user_name:            'your_email',
    password:             'your_password',
    authentication:       'plain'
  }
  ```
5. To run server use ```rails s``` command.
