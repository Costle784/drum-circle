Technologies used:
rails, ruby, postgresql, ActiveRecord, HTML5, CSS, Heroku, Devise, simple_form

Drum Circle is an app designed to connect musicians who are looking to jam. It makes it easier to find and organize jam sessions without having to go sit-in with bands at open mics or stay up all night in smoky jazz clubs in order to meet people and play. Instead, you can do everything from your couch.

App was developed using Ruby on Rails w/ HTML5 and css. The devise gem was added to implement a secure user/password interface so people can sign up for the service. It uses Postgresql for the database. The ORM is active record which allows my models to communicate with the database.  

My approach was to make it a blog style app where the posts represent jam sessions. One can join or create a new jam session or drum circle with many customizations within each.

features include customizing specific instruments for band creation. Commenting, creating, and joining, allowed by users only. 'Full Crud' on all posts and comments. fully responsive flash alerts for errors and user feedback.  

Just go to the link https://drum--circle.herokuapp.com/jamposts and sign up!

Unsolved problems include: not letting users sign up for more than one thing. Need a better way to implement the joining of drum circles. I'd like to make the instruments and attribute of the User, then make a many to many relationship between the Users and Jamposts. 
