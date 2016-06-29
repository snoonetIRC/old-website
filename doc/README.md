# README

## Setup

To install dependencies and prepare database, run `bin/setup`.

### Run Tests

To run all tests, run `bin/rspec`.

### Run Server

To run the development server, run `bin/rails server`.

View the site at [localhost:3000](http://localhost:3000).

### Run File Watcher

To run the file watcher, run `bin/guard`.

This will:

* Run a rails server, restarting when a configuration file is changed.
* Run a test file when it or it's corresponding source file is changed.
* Install dependencies when the `Gemfile` is changed.
* Start, stop, and restart Spring, the Rails application preloader.
