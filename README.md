# IMDB

In this project, we'll practice how to build relationships between models.

## Setup

 1. Clone
 1. Include the starter_generators gem in the project's Gemfile

        gem 'starter_generators', :git => 'https://github.com/rbetina/starter_generators', :branch => 'panels'

 1. `bundle install`
 1. Generate four CRUD web resources. For example,

        rails g starter:resource actor dob name bio:text image_url

    `string` is the default datatype if you don't say anything. Here are the resources to generate:

        Actor:
          dob: string
          name: string
          bio: text
          image_url: string

        Director:
          dob: string
          name: string
          bio: text
          image_url: string

        Movie:
          title: string
          year: string
          duration: integer
          description: text
          image_url: string
          director_id: integer

        Role:
          character_name: string
          movie_id: integer
          actor_id: integer

 1. Add validations to your models:

        Actor: presence of name, uniqueness of name
        Director: presence of name, uniqueness of name
        Movie: presence of title, presence of director_id
        Role: presence of movie_id, presence of actor_id

 1. Start your `rails server`. Navigate to http://localhost:3000/movies, http://localhost:3000/directors, etc. Make sure the resources look right.
 1. Generate an application layout that includes Bootstrap and a navbar:

        rails g starter:style default

 1. Seed the database with some dummy data so that we can get down to work:

        rake db:seed


## Likes

Let's complete our Movies app by adding the following features:

 - Using Devise, add User accounts to the app. Don't use scaffold or starter:resource generators.
 - For now, we can just go with Devise's default columns for the User table.

 - Add the ability for users to "like" and "unlike" movies.
  - Ensure that a user is signed in before allowing them to add or modify likes.
  - Display the number of likes for each movie on Movies#index and Movies#show.
  - Users should see a list of movies they have liked at the URL "/my_favorites".
  - Users should only be able to like a single movie once.

  - Once you are finished, remove or secure extra scaffolding that you don't want users to be able to access.
