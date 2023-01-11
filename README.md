# README

* Ruby version
- 3.1.2

* System dependencies
- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)]
- [SQLite](https://www.sqlite.org/download.html)
- [Chromedriver](https://chromedriver.chromium.org/downloads)(for test)

# Setting up your computer

To run an existing Ruby on Rails project on your computer, you will need to install Ruby and set up the necessary dependencies. Here are the steps to do this:

1. Install Ruby: The first step is to install Ruby on your computer. You can download and install the latest stable version of Ruby from the official website (https://www.ruby-lang.org/en/downloads/) or use a package manager such as `rbenv` or `rvm` to install and manage multiple versions of Ruby.

2. Install a Ruby package manager: The next step is to install a Ruby package manager, such as `bundler`, to manage the gem dependencies for the project. You can install `bundler` by running the following command:
    ```
    gem install bundler
    ```

3. Install NodeJs with npm from the official website (https://nodejs.org/en/)

4. Install `yarn` by running the following command
    ```
    npm i -g corepack
    ```

5. Install the project dependencies: Once you have Ruby and `bundler` installed, navigate to the root directory of the project and run the following command to install the required gems:
    ```
    bundle install
    ```

6. Set up the database: If the project uses a database, you will need to create the necessary database and run the database migrations to set up the schema. You can do this by running the following commands:
    ```
    rails db:create
    rails db:migrate
    ```

7. Run the application: Once everything is set up, you can start the Rails server and access the application by running the following commands in seperate terminals:
    ```
    rails server
    yarn build --watch
    yarn build:css --watch
    ```

This will start the Rails server and make the application available at `http://localhost:3000`. You can then open a web browser and visit this URL to access the application.


# How to run the test suite

To run the test suite for a Ruby on Rails project using Cucumber and RSpec, you will need to install these gems and set up the necessary configuration files. Once these are set up, you can run the tests using the `cucumber` and `rspec` commands.

The `cucumber` command runs the Cucumber tests, which are defined in the `features` directory as feature files written in the Gherkin language. The `rspec` command runs the RSpec tests, which are defined in the `spec` directory as spec files written in Ruby.

To run all the Cucumber tests, use the following command:
```
cucumber
```

To run all the RSpec tests, use the following command:

```
rspec
```

You can also specify the files or directories to run by passing them as arguments to the `cucumber` or `rspec` commands. For example, to run a specific Cucumber feature file, use the following command:

```
cucumber path/to/feature_file.feature
```

Or to run a specific RSpec spec file, use the following command:

```
rspec path/to/spec_file.rb
```