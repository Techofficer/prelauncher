# PRELAUNCHER

Rails 4 version of Harry's prelaunchr with updated design, comfortable control panel, and other new advanced features. Based on https://github.com/harrystech/prelaunchr and discussed in greater detail on [Tim Ferriss'](http://fourhourworkweek.com/2014/07/21/harrys-prelaunchr-email/) blog.

Since there is a strong interest in Prelaunchr project, but creators of original repository do not have time to support issues, fixes, or pull requests, this Rails 4 project is designed to help owners of new e-commerce websites to easily start their prelaunch referral campaigns without the need to rewrite all source code.

You can see how it actually works in sample heroku app that we created for you [https://prelaunch-campaigns.herokuapp.com](https://prelaunch-campaigns.herokuapp.com).

## Original features:
### Referral system
For every user who submits the email address the unique sharable link is automatically generated. By sharing the link with friends, users have the opportunity to earn free product. The more friends sign up using their unique referral link, the bigger prize they earn.
### Social buttons
Users can share their unique referral links in Facebook, Twitter, or by Email.
### IP blocking
By default, it's forbiden to submit more than 1 email from the same IP address.
### Mailchimp integration
When a new user signs up, his email is automatically added to your Mailchimp account.
### Automated emails
Welcome emails are sent to users after they submit email addresses.
## New features
- Updated layout and design for emails capture and refer pages.
- Control panel where you can dynamically add/edit/delete prizes and images.
- Ability to modify social messages in control panel.
- Ability to upload list of users in CSV format in control panel.
- Social sharing in Google+, Pinterest, LinkedIn
- Haml is used as the templating engine.

## Installation
```sh
$ git clone https://github.com/Techofficer/prelauncher.git prelauncher
$ cd prelauncher
$ bundle install
$ bundle exec rake db:create db:schema:load db:seed
$ rails s
```
## Configuration
- Change the default Admin user credentials in /db/seeds.rb
- Go to localhost:3000/admins/sign_in and log in with Admin user credentials
- Add MAILCHIMP_API_KEY and MAILCHIMP_LIST_ID in /app/models/setting.rb
- Set the different prize levels and add social messages in control panel
- Run rake secret to generate a new Rails secret_token and set it in /config/intializers/secret_token.rb (or in the RAILS_SECRET environment variable).

## Contributing
If you'd like to contribute a feature or tests: Thanks! Post a [pull request](https://github.com/Techofficer/prelauncher/compare/).

If you discover any bugs, feel free to [create an issue](https://github.com/Techofficer/prelauncher/issues) on GitHub. Please add as much information as possible to help us fixing the possible bug. We also encourage you to help even more by forking and sending us a pull request.

## License
MIT License. Copyright 2016 Prelauncher. http://prelauncher.info

You are not granted rights or licenses to the trademarks of the Prelauncher, including without limitation the Prelauncher name or logo.

## Advanced Prelaunch Website
![Prelauncher](http://prelauncher.info/prelauncher-black.png)

If you do not have programming skills, or you want some advanced features for your Prelaunch referral website, visit [Prelauncher.info](http://prelauncher.info) - prelaunch website builder which helps owners of new e-commerce websites to easily build a viral pre-launch website and start referral prelaunch campaign.
### Simple Web page builder
Build a simple two-page microsite with our beautiful website builder, no coding skills needed! Choose a layout, begin customizing and be online in a couple of minutes! 
### Integrations
We offer simple integrations with 3 types of online services: Email Marketing Tools (Mailchimp, Constant Contact, GetResponse, and Aweber), Analytical Tools (Google Analytics or Segment), and Link Shortners (Bitly, Google Shortener).
### WordPress
You can easily install our [WordPress plugin](https://github.com/Techofficer/wordpress-prelauncher) in order to integrate [Prelauncher](http://prelauncher.info) and your WordPress website.
### Other features configured in control panel
- confirmation emails
- search engine optimization
- automated emails sent to users once they hit a new milestone
- social sharing in Linkedin, Google+, Facebook, Twitter, Pinterest, VK, Email
- custom domains and hosting on our server
- analytics and users' profiles
- ask users for additional data (name, phone number, shipping address, avatar)

## Custom development
[Contact us](http://prelauncher.info/contact) if you need custom features, integrations, or design for your Prelaunch website.


