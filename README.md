# Capistrano::Scm::Dummy

I wrote this simple thing to test, and also to use in a greater CI context where we use deployable artifcats.  It doesn't really do anything
useful except sit in the role of :scm for cap3.  The lone thing that it actually performs is run /bin/true on your remote servers when you run
deploy:check

## Installation

Add this line to your Gemfile:

```ruby
gem 'capistrano-scm-dummy'
```

Add this line to your Capfile:

```ruby
require 'capistrano/dummy'
```

Set the SCM strategy in your deploy.rb:
```ruby
set :scm, :dummy
```

And watch the nothing happen

## Usage

You can't really use it, it doesn't do anything

## Development

This gem currently only pretends to have tests

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/capistrano-scm-dummy.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

