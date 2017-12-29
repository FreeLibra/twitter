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

```
  rails db:schema:dump
```

## Generate Controller

```
rails generate controller demo index
```

## Default routes

> Default routes will no longer be supported.

```
get ':controller(/:action(/:id))'
```

## Root routes

```
root 'demo#index'
```

## Simple routes

```
get 'demo/index'
```

## Template

Vallina Ruby statements.

```
<%  %>
```

Erb file and it's template grammer.

```
<%= "bar #{foo}" %>
```

> Double quotes are not supported in Ruby's template. (.erb file)

Conversation with controller.

```
// controller
@foo = "bar"

// erb
<%= "#{@foo}" %>
```

## LinkTo

Erb template provides a built-in function\-\-link_to for links.

```
<a href="/demo/index">index</a> // not recommend

<%= link_to(text, target) %>

<%= link_to("Back To Index", {controller: 'demo', action: "index"}) %>
```

> if two pages are in the same controller, you needn't to pass the controller param;

## Get url params

Link

```
// Url varies depends on your routes setting.
// Dynamic links to pass params to controllers
<%= link_to('hello', {:controller => 'demo', :action => 'index', :id => 55}) %>
```

There are two ways to get params from url.

```
// controller

@id = params['id']
@name = params[:name]

// view
<%= @id %>
```

## Migration

1. Aim to ctrl database;
2. Written by Ruby;

```
rails generate migration DoTestDemo
```

> Migration name must use camelcase.

## Model

Generate a model.

```
rails g model User name:string email:string
```

Create mysql table;

```
rails db:migrate
```

Rollback;

```
rails db:rollback
```


## Mysql

Mysql suggest you using capitalize letters for it's key words.

```
DESCRIBE users;
```


## Git Branch

Create a branch, and set current to it.

```
git checkout -b branch_name
```
