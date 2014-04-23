# Cunningham [![CircleCI](https://circleci.com/gh/tanner-labs/cunningham.png?circle-token=d0d8dfe7fdca1c740a6e65a9503f461267126bb7)](https://circleci.com/gh/tanner-labs/cunningham)

![Cunningham C-4R Racer](http://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Cunningham_C4R.JPG/626px-Cunningham_C4R.JPG)

Tired of your applications calls to Stripe API taking forever? Don't want to
store the data Stripe already so elegantly manages for you? Put some racing
stripes on your app with Cunningham!

## Installation

You'll need a running instance of Redis on your local machine, or something in
the `REDIS_URL` environment variable that will direct Cunningham to a Redis
instance, or we'll go all vintage NASCAR on you and crash.

Add this line to your application's Gemfile:

    gem 'cunningham'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cunningham

## Usage

Use Stripe!

Cunningham automatically injects itself in front of the Stripe gem
and checks its Redis cache for the entity you're looking for before it calls out
to the web service. If it can't find anything, it will allow the call to follow
its normal path up the call chain out to the API. Once it's got an object back,
it will store it FOREVER because nothing invalidates the cache yet! SOUNDS
AWESOME, EH?

Soon, Cunningham will include a mountable Rails engine that you can set up
quickly to receive Stripe webhooks which will invalidate the cache based on the
events Stripe sends to your application, making the cache mostly super accurate!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
