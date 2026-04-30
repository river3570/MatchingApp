genders_data = [
  { name: "男性" },
  { name: "女性" },
  { name: "その他" }
]

users_data = [
  { email: 'sato@example.com', password: 'password', nickname: "佐藤花子", age: 26, gender_id: 2, user_image: "" },
  { email: 'suzuki@example.com', password: 'password', nickname: "鈴木太郎", age: 30, gender_id: 1, user_image: "" },
  { email: 'nagano@example.com', password: 'password', nickname: "長野洋子", age: 18, gender_id: 3, user_image: "" }
]

genders_data.each do |gender_data|
  Gender.find_or_create_by(name: gender_data[:name])
end

users_data.each do |user_data|
  User.find_or_create_by(email: user_data[:email]) do |u|
    u.password = user_data[:password]
    u.nickname = user_data[:nickname]
    u.age = user_data[:age]
    u.gender_id = user_data[:gender_id]
    u.user_image = user_data[:user_image]
  end
end
