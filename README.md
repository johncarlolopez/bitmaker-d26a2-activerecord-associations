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
    belongs_to :customer
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
    belongs_to :customer
    has_many :messages
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
