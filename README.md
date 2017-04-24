# Books project

A basic rails project that allow users to register books, authors and
publisher houses.

## Technologies

* Ruby: 2.4.0
* Rails: 5.0.1
* Bootstrap: 4.0.0
* Database adapter: PostgreSQL 

## How to run the project

First of all, you'll need to instal the dependencies of the project. In
order to accomplish that, use the following command:

1. `$ bundle install`

Then, you'll create the database and generate the necessary tables
running the following commands:

2. `$ rake db:create`
3. `$ rake db:migrate`

Now, let's run the following commands to seed the database and run the
project:

4. `$ rake db:seed`
5. `$ rails s`

Now, navigate to your browser, and open the following url:
[localhost:3000](http://localhost:3000)

## Example

You can find a live example in the following
[site](https://books-sample.herokuapp.com/).

## Todo

* Stablish connection with Google books API.

## Contribuitors
* [Jesus Ramos](https://www.github.com/jramscr)

