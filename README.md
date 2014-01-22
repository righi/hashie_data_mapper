hashie_data_mapper
==================

An extension to the Hashie Ruby Gem for Working with Data Mappers.

This is hopefully just a temporary project, pending the merge into
Hashie of this pull request: https://github.com/intridea/hashie/pull/131


Installation
------------

Add this to your Gemfile:

    gem 'hashie_data_mapper', git: "https://github.com/righi/hashie_data_mapper.git", tag: 'v0.1.2'


Usage
-----

```ruby
require 'hashie'
require 'hashie_data_mapper'

class Person < Trash
  include HashieDataMapper::IgnoreUndeclared
    
  property :first_name
  property :last_name
 end
 
user_data = {
  :first_name => 'Freddy',
  :last_name => 'Nostrils',
  :email => 'freddy@example.com'
}

p = Person.new(user_data) # 'email' is silently ignored

p.first_name # => 'Freddy'
p.last_name  # => 'Nostrils'
p.email      # => NoMethodError
```
