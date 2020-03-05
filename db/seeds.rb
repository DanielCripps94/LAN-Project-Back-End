# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: 'Star Wars' ,  name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'Dan', password: 'password')
User.create(username: 'Dom', password: 'password1')

Event.create(title: 'League Lan', game: 'League of Legends', description: '
S-Tier Tournaments (formerly known as Premier Tournaments) offer an outstanding prize pool, are almost exclusively played offline,
and feature the best teams from all over the world. They are commonly held by well-established organizers and are considered especially prestigious amongst the community.
Highlighted tournaments are special CS:GO Major Championship ("CS:GO Championship" in 2013) events which feature a large prize pool and are sponsored by Valve.', date: '02/03/94', location: "Burnt Hill Road, Wrecclesham, Farnham GU10 4RR, UK", lat: 51.1950882, lng: -0.8034135, user_id: 1)
Event.create(title: 'CSGO Lan', game: 'CSGO', description: '
S-Tier Tournaments (formerly known as Premier Tournaments) offer an outstanding prize pool, are almost exclusively played offline,
and feature the best teams from all over the world. They are commonly held by well-established organizers and are considered especially prestigious amongst the community.
Highlighted tournaments are special CS:GO Major Championship ("CS:GO Championship" in 2013) events which feature a large prize pool and are sponsored by Valve.', date: '02/18/94', location: "Burnt Hill Road, Wrecclesham, Farnham GU10 4RR, UK", lat: 51.1950882, lng: -0.8034135, user_id: 1)
Event.create(title: 'Overwatch Lan', game: 'Overwatch', description: '
S-Tier Tournaments (formerly known as Premier Tournaments) offer an outstanding prize pool, are almost exclusively played offline,
and feature the best teams from all over the world. They are commonly held by well-established organizers and are considered especially prestigious amongst the community.
Highlighted tournaments are special CS:GO Major Championship ("CS:GO Championship" in 2013) events which feature a large prize pool and are sponsored by Valve.', date: '31/03/2020', location: "Burnt Hill Road, Wrecclesham, Farnham GU10 4RR, UK", lat: 51.1950882, lng: -0.8034135, user_id: 2)
Event.create(title: 'COD4 Lan', game: 'COD4', description: '
S-Tier Tournaments (formerly known as Premier Tournaments) offer an outstanding prize pool, are almost exclusively played offline,
and feature the best teams from all over the world. They are commonly held by well-established organizers and are considered especially prestigious amongst the community.
Highlighted tournaments are special CS:GO Major Championship ("CS:GO Championship" in 2013) events which feature a large prize pool and are sponsored by Valve.', date: '01/12/2020', location: "Burnt Hill Road, Wrecclesham, Farnham GU10 4RR, UK", lat: 51.1950882, lng: -0.8034135, user_id: 1)


Ticket.create(user_id: 1, event_id: 1)
Ticket.create(user_id: 2, event_id: 1)
Ticket.create(user_id: 2, event_id: 2)

Comment.create(user_id: 1, event_id: 1, content: 'Looking forward to this!')
Comment.create(user_id: 1, event_id: 1, content: 'This is gonna be great!')
Comment.create(user_id: 2, event_id: 2, content: 'Where is this being held?!')
Comment.create(user_id: 2, event_id: 2, content: 'Are we going to be playing CS?!')





