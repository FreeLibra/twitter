# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



## Test DB

It should echo nothing when everything goes well;

``` bash
  rails db:schema:dump
```

## Generate Controller

``` bash
rails generate controller demo index
```

## Default routes

> Default routes will no longer be supported.

``` bash
get ':controller(/:action(/:id))'
```

## Root routes

``` bash
root 'demo#index'
```

## Simple routes

``` bash
get 'demo/index'
```

## Template

Vallina Ruby statements.

``` bash
<%  %>
```

Erb file and it's template grammer.

```
<%= "bar #{foo}" %>
```

> Double quotes are not supported in Ruby's template. (.erb file)

Conversation with controller.

``` bash
// controller
@foo = "bar"

// erb
<%= "#{@foo}" %>
```

## LinkTo

Erb template provides a built-in function\-\-link_to for links.

``` bash
<a href="/demo/index">index</a> // not recommend

<%= link_to(text, target) %>

<%= link_to("Back To Index", {controller: 'demo', action: "index"}) %>
```

> if two pages are in the same controller, you needn't to pass the controller param;

## Get url params

Link

``` bash
// Url varies depends on your routes setting.
// Dynamic links to pass params to controllers
<%= link_to('hello', {:controller => 'demo', :action => 'index', :id => 55}) %>
```

There are two ways to get params from url.

``` bash
// controller

@id = params['id']
@name = params[:name]

// view
<%= @id %>
```

## Migration

1. Aim to ctrl database;
2. Written by Ruby;

``` bash
rails generate migration DoTestDemo
```

> Migration name must use camelcase.

## Model

Generate a model.

``` bash
rails g model User name:string email:string
```

Create mysql table;

```
rails db:migrate
```

Rollback;

``` bash
rails db:rollback
```

## Sandbox

Get into sandbox mode.

``` bash
rails console --sandbox
```

Create users in sandbox mode.

``` bash

ntnyq = User.new(name: "ntnyq", email: "me@ntnyq.com")

// Need validation pattern set.
ntnyq.valid?

ntnyq.save

// new and save in one step
goy = User.create(name: "goy", email: "goy@ntnyq.com")
```

### View

``` bash
// list all users
User.all

// show first user
User.first
```

### Find One

```
User.find(id)

User.find_by(name: "goy")
```

### Update

``` bash
goy.name = "gay"
goy.save

goy.update_attribute(:name, "goy")
```

### Delete

``` bash
goy.delete
```

## Validate

See more At [Rails Validation](http://guides.rubyonrails.org/active_record_validations.html)

``` ruby
validates :name, { presence: true, length: {minimum: 5, maximum: 20} }

VALD_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
validates :email, presence: true, length: { maximum: 20 },
          format: { width: VALD_EMAIL_REGEXP },
          uniqueness: { case_sensitive: false }
```





## Mysql

Mysql suggest you using capitalize letters for it's key words.

``` mysql
DESCRIBE users;
```

## Git

### Create Branch

Create a branch and set it currently.

``` bash
git checkout -b branch_name
```

### Go Back To master

``` bash
git checkout master

git checkout -
```
