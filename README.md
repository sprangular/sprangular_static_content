## Features Overview

Adds CMS support from Spree admin for Sprangular.

## Installation

Add to host app:

Gemfile:

```ruby
gem 'spree_static_content', github: 'DynamoMTL/spree_static_content' , branch: '2-4-stable'
gem 'sprangular_static_content', github: 'sprangular/sprangular_static_content'
```

Then run:

```shell
bundle install
rails g spree_static_content:install
```

In `app/assets/javascripts/sprangular/host.coffee`, add:

```
angular.module('YourAppName', ['Sprangular', 'Sprangular.StaticContent'])
```

In `app/assets/javascripts/application.js`, add:

```
//= require sprangular/sprangular_static_content
```

## Testing

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

## License

MIT
