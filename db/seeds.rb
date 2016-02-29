User.create!([
  {email: "erster-nutzer@mail.de", password: "passwort", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-02-20 14:07:30", last_sign_in_at: "2016-02-20 14:07:30", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "zweiter-nutzer@mail.de", password: "$passwort", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-02-20 14:15:22", last_sign_in_at: "2016-02-20 14:15:22", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Comment.create!([
  {commentable_type: "Event", commentable_id: 1, user_id: nil, body: "Zeit zum ausrasten!", username: "erster-nutzer@mail.de"},
  {commentable_type: "Discothek", commentable_id: 1, user_id: nil, body: "Mehr so mittelmäßig", username: "erster-nutzer@mail.de"},
  {commentable_type: "Pub", commentable_id: 1, user_id: nil, body: "Gute Preise, gute Besserung.", username: "erster-nutzer@mail.de"},
  {commentable_type: "Event", commentable_id: 1, user_id: nil, body: "Bin dabei!", username: "zweiter-nutzer@mail.de"},
  {commentable_type: "Discothek", commentable_id: 1, user_id: nil, body: "Also ich finds super da.", username: "zweiter-nutzer@mail.de"},
  {commentable_type: "Pub", commentable_id: 1, user_id: nil, body: "Gibt es da nicht auch was von Ratiopharm?", username: "zweiter-nutzer@mail.de"}
])
Discothek.create!([
  {title: "Gazelle", description: "Beste Diskothek in ganz Münster", place: "Münster", address: "Wolbecker Straße 1", latitude: 51.9594365, longitude: 7.6356692}
])
Event.create!([
  {title: "Docklands", description: "Bestes Event in ganz Münster", place: "Münster", address: "am Hawerkamp", date: "2016-05-20", time: "2000-01-01 14:07:00", latitude: 51.9461841, longitude: 7.638761}
])
Pub.create!([
  {title: "Cavete", description: "Beste Bar in ganz Münster", place: "Münster", address: "Kreuzstraße 7", latitude: 49.9184001, longitude: 8.8924411}
])
Rate.create!([
  {rater_id: 1, rateable_id: 1, rateable_type: "Event", stars: 4.0, dimension: "score"},
  {rater_id: 1, rateable_id: 1, rateable_type: "Discothek", stars: 3.0, dimension: "score"},
  {rater_id: 1, rateable_id: 1, rateable_type: "Pub", stars: 4.0, dimension: "score"},
  {rater_id: 2, rateable_id: 1, rateable_type: "Event", stars: 1.0, dimension: "score"},
  {rater_id: 2, rateable_id: 1, rateable_type: "Discothek", stars: 5.0, dimension: "score"},
  {rater_id: 2, rateable_id: 1, rateable_type: "Pub", stars: 2.0, dimension: "score"}
])
RatingCache.create!([
  {cacheable_id: 1, cacheable_type: "Event", avg: 2.5, qty: 2, dimension: "score"},
  {cacheable_id: 1, cacheable_type: "Discothek", avg: 4.0, qty: 2, dimension: "score"},
  {cacheable_id: 1, cacheable_type: "Pub", avg: 3.0, qty: 2, dimension: "score"}
])
