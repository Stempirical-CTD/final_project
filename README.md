# Stempirical

Stempirical is a crowdsourced collection of age appropriate and engaging science
experiments. What sets this site apart from similar sites is that in addition
to showing the materials and instructions (the how), we also explore the
scientific explanations behind the experiment (the why). Stempirical is a space
where rainy-day science experiments are both entertaining and educational.

This project was create by two Ruby on Rails developers,
[Aaron Wiggins](https://github.com/aaronwiggins) and
[Daisy Magnus](https://github.com/DaisyMagnus), and one Front End Developer,
[Lindsey Miller](https://github.com/lindcmiller), from The Iron Yard Durham.

Check out our individual GitHub profiles by clicking on our names to see more
of our work.

* A link to our
  [ERD](https://www.lucidchart.com/invitations/accept/e9f80ee0-ad89-4b80-8cc5-246180c68e76)
  to get a better understanding of our database structure
* [Stempirical](https://stempirical.herokuapp.com/experiments) to see our site
  live!

### To Run the App Locally
* Clone our repo with this link
  [here](https://github.com/AaronLindsayDaisy/final_project.git)
* `bin/rake db:migrate`
* `bin/rake db:seed`
* `bin/rails server`
* Navigate to your `localhost:3000` in your browser

### To Upload Your Own Photos on localhost
* We've used the gem `paperclip` for uploaded files.
* You'll need to create an amazon web services account
  [here](http://aws.amazon.com/s3/).
* Create a bucket, name it whatever you want. This will be where your photos
  are stored.
* You'll need to generate your on AWS ID and KEY. Once you do, save those
  as local environment variables.
* Our env variables are saved in the `application.rb` file in the `config/`
  folder.
* Change `stempirical` to whatever you named your bucket on your AWS account.
* If your local env variables are saved with the same name as ours, that's all
  you have to do. If you created your own, you'll replace ours with whatever
  yours are named.
* Restart your terminal and you will be able to upload your own photos to
  `localhost`.

### Gems We've Used
* [`gem 'paperclip'`](https://github.com/thoughtbot/paperclip)
* [`gem 'ratyrate'`](https://github.com/wazery/ratyrate)
* [`gem 'devise'`](https://github.com/plataformatec/devise)
* [`gem 'font-awesome-rails'`](https://github.com/bokmann/font-awesome-rails)
