
genders_data = [
  { name: "男性" },
  { name: "女性" },
  { name: "その他" }
]

hobbies_data = [
  {name: "料理"},
  {name: "プログラミング"},
  {name: "ストレッチ"},
  {name: "釣り"},
  {name: "ショッピング"},
  {name: "映画"},
]

users_data = [
  { email: 'sato@example.com', password: 'password', nickname: "佐藤花子", age: 26, gender_id: 2, user_image: "user-icon.jpg", introduction: "趣味はストレッチです。
  テキストテキストテキストあああああああああああああああああああ" },
  { email: 'suzuki@example.com', password: 'password', nickname: "鈴木太郎", age: 30, gender_id: 1, user_image: "male1.png", introduction: "ほげほげほげほげほげ" },
  { email: 'nagano@example.com', password: 'password', nickname: "長野洋子", age: 18, gender_id: 3, user_image: nil, introduction: "ああああああああああああ" }
]

user_hobbies_data = [
  { email: 'sato@example.com',   hobby_name: "料理" },
  { email: 'sato@example.com',   hobby_name: "プログラミング" },
  { email: 'sato@example.com',   hobby_name: "ストレッチ" },
  { email: 'suzuki@example.com', hobby_name: "釣り" },
  { email: 'suzuki@example.com', hobby_name: "映画" },
  { email: 'nagano@example.com', hobby_name: "プログラミング" },
]

genders_data.each do |gender_data|
  Gender.find_or_create_by!(name: gender_data[:name])
end

hobbies_data.each do |hobby_data|
  Hobby.find_or_create_by!(name: hobby_data[:name])
end

users_data.each do |user_data|
  User.find_or_create_by!(email: user_data[:email]) do |u|
    u.password = user_data[:password]
    u.nickname = user_data[:nickname]
    u.age = user_data[:age]
    u.gender_id = user_data[:gender_id]
    u.user_image = user_data[:user_image]
    u.introduction = user_data[:introduction]
  end
end

user_hobbies_data.each do |data|
  user  = User.find_by!(email: data[:email])
  hobby = Hobby.find_by!(name: data[:hobby_name])
  UserHobby.find_or_create_by!(user: user, hobby: hobby)
end
