# Part 1
___
  * forum
  * orderingapp
  * eventbrite

1. A forum where people can post messages on different discussions.
  * User
    * id(integer)
    * name(string)
    ```
    rails g model User name:string
    ```
    ```
    in class User:
    has_many :discussions
    has_many :messages
    ```
  * Discussion
    * id(integer)
    * name(string)
    * message(text)
    * user_id(foreign key)
    ```
    rails g model Discussion name:string message:text user:references
    ```
    ```
    in class Discussion:
    belongs_to :user
    has_many :messages
    ```
  * Message
    * id(integer)
    * message(text)
    * discussion_id(integer)(foreign key)
    * user_id(integer)(foreign key)
    ```
    rails g model Message message:text discussion:references user:references
    ```
    ```
    in class Message:
    belongs_to :user
    belongs_to :discussion
    ```

User (one) - (many) Threads
User (one) - (many) Messages
Thread (one) - (many) Messages

each database will require it's own class

2.  Customers with orders customer_order
  * Customer
    * id(integer)
    * name(string)
    * mailing_address(string)
    * email(string)
  * Order
    * id(integer)
    * date(string)
    * customer_id(integer)(foreign key)
    ```
    rails g model Discussion name:string message:text customer:references
    ```
    ```
    in class Discussion:
    belongs_to :customer
    has_many :messages
    ```
3. An Eventbrite-style app where people can sell tickets to events they're hosting, or buy tickets to other people's events.

  * User
    * id(integer)
    * name(string)
    ```
    rails g model User name:string
    ```
    ```
    in class Discussion:
    has_many :tickets
    has_many :events
    ```
  * Ticket
    * id(integer)
    * buyer_id(integer)(foreign key)
    * event_id(integer)(foreign key)
    * price(float)
    ```
    rails g model Ticket buyer:references event:references price:float
    ```
    ```
    in class Discussion:
    belongs_to :user
    belongs_to :event
    ```
  * Event
    * id(integer)
    * name(string)
    * user_id "organizer" (integer)(foreign key)
    ```
    rails g model Event name:string user:references
    ```
    ```
    in class Discussion:
    belongs_to :user
    has_many :tickets
    ```

User (one) - (many) Tickets  // buying
User (one) - (many) Tickets // selling
User (one) - (many) Events // one user can hold many events
Event (one) - (many) Tickets

# Part 2
___

1.
  * Film
    * id(integer)
    * name(string)
    * year(integer)
```
rails g model Film name:string year:integer

has_and_belongs_to_many :viewers
```
  * Film_viewing
    * id(integer)
    * film_id(integer)(foreign key)
    * viewer_id(integer)(foreign key)
    * date(string)
```
rails g migration Create_Film_Viewer film:references viewer:references date:datetime
```
  * Viewer
    * id(integer)
    * name(string)
    * age(integer)
```
rails g model Viewer name:string age:integer

has_and_belongs_to_many :films
```
2.
  * Worker
    * id(integer)
    * name(string)
    * wage(float)
```
rails g model Worker name:string wage:float

has_and_belongs_to_many :shifts
```
  * shifts_workers
    * id(integer)
    * worker_id(integer)(foreign key)
    * shift_id(integer)(foreign key)
```
rails g migration Create_Shifts_Workers shift:references worker:references
```
  * Shift
    * id(integer)
    * day(string)
    * time(string)
  ```
  rails g model Shift date:datetime

  has_and_belongs_to_many :workers
  ```    

4. Music piece, sheet music, instrument

Music_piece (one) - (many) sheet_music
Music_piece (many) - (many) instruments
Sheet music (one) - (one) instrument

  * Music
    * id(integer)
    * name(string)
```
rails g model Music name:string

has_and_belongs_to_many :instruments
```    
  * Instrument_music
    * id(integer)
    * name(string)
    * music_id(integer)(foreign key)
    * instrument_id(integer)(foreign key)
```
rails g migration Create_Instruments_Musics name:string instrument:references music:references
```    
  * Instrument
    * id(integer)
    * name(string)
```
rails g model Instrument name:string

has_and_belongs_to_many :musics
```    
# Part 3
___
1. Find the album titled "Vinicius De Moraes", and then use an association-provided method to find all its tracks.
```
Album.where("title = ?", 'Vinicius De Moraes').first.tracks
```
2. Find the artist called "Philip Glass Ensemble", and then use an association-provided method to find all their albums.
```
Artist.where("name = ?", 'Philip Glass Ensemble').first.albums
```
3. Find the "Brazilian Music" playlist and then use an association-provided method to find all its tracks.
```
Playlist.where("name = ?", 'Brazilian Music').first.tracks
```
4. Find the "Jazz" genre and then use an association-provided method to find all its tracks.
```
Genre.where(name: 'Jazz').first.tracks
```
5. Find the track "My Time After Awhile" and then use an association-provided method to find its genre.
```
Track.where(name: 'My Time After Awhile').first.genre
```
6. Use an association-provided method to find the media type of that same track.
```
Track.where(name: 'My Time After Awhile').first.media_type
```
7. Use an association-provided method to find the album that track appears on.
```
Track.where(name: 'My Time After Awhile').first.album
```

# Part 4
___
Complete
# README


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
