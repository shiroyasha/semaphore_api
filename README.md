# SemaphoreApi &mdash; Unofficial Ruby wrapper around Semaphore's API

## Usage

Start by contructing a client

``` rb
semaphore = SemaphoreApi::Client.new("AUTH_TOKEN")
```

List your projects on Semaphore

``` rb
projects = semaphore.projects
```

Display their names

``` rb
puts projects.map(&:name)
```

Find projects via their name

``` rb
sempahore_api = projects.find { |project| project.name == "semaphore_api" }
```

Display active branches for a project

``` rb
semaphore_api.branches.map(&:branch_name) # => ["master", "development"]
```

List all the webhooks for a project

``` rb
webhooks = client.webhooks(semaphore_api.hash_id)
```

Collect information about a build

``` rb
master = semaphore_api.branches.find { |branch| branch.name == "master" }

build = client.build_status(semaphore_api.hash_id, master.branch_id)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'semaphore_api'
```

## Contributing

1. Fork it ( https://github.com/shiroyasha/semaphore_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
