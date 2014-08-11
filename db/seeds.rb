#User.create!([
#  {first_name: "", last_name: "z", username: "zoltan", email: "lang_zoltan@yahoo.com", encrypted_password: "$2a$10$zDr2NtZZ/xaOTwzpzKZ5kOcMublHLN159BuugDLPg6mS7VQZQqU2u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-08-11 09:58:39", last_sign_in_at: "2014-08-11 09:58:39", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
 # {first_name: "", last_name: "z", username: "zoli", email: "general_zoli@freemail.hu", encrypted_password: "$2a$10$hk23VCv2JE7pK4XqguwjuOk3jNlKAmktxv2H1hpFgSXBrESEBteuK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-08-11 09:58:59", last_sign_in_at: "2014-08-11 09:58:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
#])

FriendShip.create!([
  {user_id: 1, friend_id: 2, status: "request"},
  {user_id: 1, friend_id: 3, status: "request"}
])


User.create!([
  {first_name: "", last_name: "z", username: "zoltan", email: "lang_zoltan@yahoo.com", password: "11111111", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-08-11 09:58:39", last_sign_in_at: "2014-08-11 09:58:39", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
 {first_name: "", last_name: "z", username: "zoli", email: "general_zoli@freemail.hu", password: "11111111", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-08-11 09:58:59", last_sign_in_at: "2014-08-11 09:58:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
