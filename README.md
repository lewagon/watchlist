# Movie Watchlist

This is a sample rails app to illustrate migrating from Heroku to AWS Beanstalk.

This app needs the following Heroku add-ons:

- PostgreSQL
- [Redis](https://addons.heroku.com/rediscloud) (for [Sidekiq](http://sidekiq.org/))
- Mandrill (for sending devise forgot password emails)

The environment variable needed are:

- RACK_ENV (production)
- RAILS_ENV (production)
- HOST (e.g. wagon-watchlist.herokuapp.com)
- DEVISE_SECRET_KEY (e.g. `ruby -rsecurerandom -e "puts SecureRandom.hex(64)"`)
- SECRET_KEY_BASE (idem)
- S3_BUCKET_NAME
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- MANDRILL_USERNAME
- MANDRILL_APIKEY
- REDIS_PROVIDER

This app uses S3 and ImageMagick (Paperclip). The `Procfile` has 2 lines,
a `web` and a `worker`.