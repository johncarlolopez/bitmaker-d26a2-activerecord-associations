# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# create_table "discussions", force: :cascade do |t|
#   t.string "name"
#   t.text "message"
#   t.integer "user_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["user_id"], name: "index_discussions_on_user_id"
# end
# create_table "messages", force: :cascade do |t|
#   t.text "message"
#   t.integer "discussion_id"
#   t.integer "user_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["discussion_id"], name: "index_messages_on_discussion_id"
#   t.index ["user_id"], name: "index_messages_on_user_id"
# end
#
# create_table "users", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
john = User.create(name: 'John')
bob = User.create(name: 'Bob')

my_discussion = Discussion.create(name: 'Rails Guide',user_id: john.id, message: 'This is my rails guide')

bob_reply = Message.create(message: 'nice guide',discussion_id: my_discussion.id, user_id: bob.id)
john_reply = Message.create(message: 'thank you',discussion_id: my_discussion.id, user_id: john.id)
