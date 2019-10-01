# Web Tests
This project is a super tiny start at using Capybara & Cucumber with Ruby to write easily maintainable tests.

## Setup

```bash
rvm install 2.6.0
bundle install
```

The project does not contain any configuration settings so these have to be added before running:

* TEST_USERNAME = the user name to log in with
* TEST_PASSWORD = the user password
* TEST_HOST_URL = the url to navigate to when logging in

For example:
```bash
export TEST_USERNAME=david@greycastle.se
export TEST_PASSWORD=ihaventputmyrealpasswordhere
export TEST_HOST_URL=http://mysite.com/
```

## Run

```bash
cucumber features
```

## Add more tests

Create a new `x.feature` file in the `features` folder and then add in a scenario.

Then run `cucumber -d` to get example step definitions, paste and modify these into step definitions.

## Using Capybara
Capybara isn't just a cute animal, it's also a framework for driving UI tests with Selenium. Check out the [cheat sheet](https://gist.github.com/zhengjia/428105) for a quick guide into how to use it.