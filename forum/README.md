1. A forum where people can post messages on different threads.
  * User
    * id(integer)
    * name(string)
  * Thread
    * id(integer)
    * name(string)
    * message(text)
    * user_id(foreign key)
  * Message
    * id(integer)
    * message(text)
    * thread_id(integer)(foreign key)
    * user_id(integer)(foreign key)

User (one) - (many) Threads
User (one) - (many) Messages
Thread (one) - (many) Messages

each database will require it's own class

2. An app for a dentist office to keep track of appointments.

  * Dentist
    * id(integer)
    * name(string)
    * clinic_id(integer)(foreign key)
  * Patient
    * id(integer)
    * name(string)
    * clinic_id(integer)(foreign key)
  * Appointment
    * id(integer)
    * name(string)
    * patient_id(integer)(foreign key)
    * dentist_id(integer)(foreign key)
    * clinic_id(integer)(foreign key)
    * date(string)
    * time(string)
  * Clinic
    * id(integer)
    * name(string)

Dentist (one) - (many) appointment
Clinic (one) - (many) dentists
Clinic (one) - (many) patients
Clinic (one) - (many) appointment
Patient (one) - (many) appointment

each database will require it's own class

3. An Eventbrite-style app where people can sell tickets to events they're hosting, or buy tickets to other people's events.

  * User
    * id(integer)
    * name(string)
  * Ticket
    * id(integer)
    * buyer_id(integer)(foreign key)
    * event_id(integer)(foreign key)
    * price(float)
  * Event
    * id(integer)
    * name(string)
    * user_id "organizer" (integer)(foreign key)

Users (many) - (many) Tickets  // buying
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
