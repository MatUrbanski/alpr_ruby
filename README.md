# AlprRuby

Ruby wrapper for OpenALPR REST API
[API Documents/Play Ground](http://doc.openalpr.com/api/cloudapi.html#!/default/post_recognize)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alpr_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alpr_ruby

## Usage

### Initialize client

```ruby
AlprRuby::Client.new(secret: 'your_secret_here')
```

### Send data to OpenALPR API

```ruby
params = {
  image_url: 'http://www.motofilm.pl/wp-content/uploads/2010/04/audi_a8_prezentacja_270410_03_glo.jpg',
  tasks: 'plate',
  topn: 1,
  country: 'eu'
}

client.recognize(params: params)
```