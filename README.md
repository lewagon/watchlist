# Movie Watchlist

This is a sample rails app to illustrate migrating from Heroku to AWS Beanstalk.

This app needs the following Heroku add-ons:

- PostgreSQL
- Redis (for Sidekiq)
- Mandrill (for sending devise forgot password emails)

The environment variable needed are:

- HOST (e.g. wagon-watchlist.herokuapp.com)
- DEVISE_SECRET_KEY
- SECRET_KEY_BASE
- S3_BUCKET_NAME
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY

This app uses S3 and ImageMagick (Paperclip)