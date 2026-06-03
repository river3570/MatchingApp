
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
  { email: 'sato@example.com',     password: 'password', nickname: "佐藤花子",   age: 26, gender_id: 2, user_image: "female1.png", introduction: "趣味はストレッチです。よろしくお願いします！" },
  { email: 'suzuki@example.com',   password: 'password', nickname: "鈴木太郎",   age: 30, gender_id: 1, user_image: "male1.png",   introduction: "釣りと映画が好きです。" },
  { email: 'tanaka@example.com',   password: 'password', nickname: "田中健二",   age: 25, gender_id: 1, user_image: nil,           introduction: "プログラミングが趣味です。" },
  { email: 'yamada@example.com',   password: 'password', nickname: "山田美咲",   age: 22, gender_id: 2, user_image: "female1.png", introduction: "料理が得意です。" },
  { email: 'ito@example.com',      password: 'password', nickname: "伊藤さくら", age: 28, gender_id: 2, user_image: nil,           introduction: "ショッピングが大好きです！" },
  { email: 'watanabe@example.com', password: 'password', nickname: "渡辺翔",     age: 33, gender_id: 1, user_image: "male1.png",   introduction: "映画鑑賞が趣味です。" },
  { email: 'kobayashi@example.com',password: 'password', nickname: "小林奈々",   age: 24, gender_id: 2, user_image: nil,           introduction: "ストレッチで毎日リフレッシュしています。" },
  { email: 'kato@example.com',     password: 'password', nickname: "加藤大輝",   age: 27, gender_id: 1, user_image: nil,           introduction: "釣りが趣味で週末は川へ行きます。" },
  { email: 'yoshida@example.com',  password: 'password', nickname: "吉田遥",     age: 31, gender_id: 3, user_image: nil,           introduction: "料理と映画が好きです。" },
  { email: 'yamamoto@example.com', password: 'password', nickname: "山本拓海",   age: 29, gender_id: 1, user_image: "male1.png",   introduction: "プログラミングで個人開発しています。" },
  { email: 'nakamura@example.com', password: 'password', nickname: "中村愛",     age: 23, gender_id: 2, user_image: "female1.png", introduction: "ショッピングとストレッチが好きです。" },
  { email: 'hayashi@example.com',  password: 'password', nickname: "林勇太",     age: 35, gender_id: 1, user_image: nil,           introduction: "釣り歴10年のベテランです。" },
  { email: 'kimura@example.com',   password: 'password', nickname: "木村菜摘",   age: 21, gender_id: 2, user_image: nil,           introduction: "料理研究中です。" },
  { email: 'saito@example.com',    password: 'password', nickname: "斉藤蓮",     age: 26, gender_id: 1, user_image: "male1.png",   introduction: "映画は月10本見ます。" },
  { email: 'matsumoto@example.com',password: 'password', nickname: "松本彩",     age: 28, gender_id: 2, user_image: "female1.png", introduction: "ストレッチとショッピングが趣味です。" },
  { email: 'inoue@example.com',    password: 'password', nickname: "井上颯",     age: 32, gender_id: 1, user_image: nil,           introduction: "プログラミングとゲームが好きです。" },
  { email: 'kimoto@example.com',   password: 'password', nickname: "木本里奈",   age: 20, gender_id: 2, user_image: nil,           introduction: "料理教室に通っています。" },
  { email: 'ogawa@example.com',    password: 'password', nickname: "小川誠",     age: 34, gender_id: 1, user_image: "male1.png",   introduction: "釣りと料理を組み合わせて楽しんでいます。" },
  { email: 'nishimura@example.com',password: 'password', nickname: "西村あおい", age: 27, gender_id: 2, user_image: "female1.png", introduction: "映画とショッピングが好きです。" },
  { email: 'fukuda@example.com',   password: 'password', nickname: "福田隼人",   age: 29, gender_id: 1, user_image: nil,           introduction: "プログラミング勉強中です。" },
  { email: 'ono@example.com',      password: 'password', nickname: "小野梨花",   age: 24, gender_id: 2, user_image: nil,           introduction: "ストレッチで健康維持しています。" },
  { email: 'ikeda@example.com',    password: 'password', nickname: "池田蒼",     age: 31, gender_id: 3, user_image: nil,           introduction: "料理と釣りが趣味です。" },
  { email: 'hashimoto@example.com',password: 'password', nickname: "橋本夏希",   age: 22, gender_id: 2, user_image: "female1.png", introduction: "ショッピングが大好きです。" },
  { email: 'ishikawa@example.com', password: 'password', nickname: "石川悠",     age: 28, gender_id: 1, user_image: "male1.png",   introduction: "映画とプログラミングにはまっています。" },
  { email: 'maeda@example.com',    password: 'password', nickname: "前田桃子",   age: 25, gender_id: 2, user_image: nil,           introduction: "料理とストレッチが日課です。" },
  { email: 'fujita@example.com',   password: 'password', nickname: "藤田陸",     age: 33, gender_id: 1, user_image: nil,           introduction: "釣りで全国の川を制覇したいです。" },
  { email: 'goto@example.com',     password: 'password', nickname: "後藤心春",   age: 26, gender_id: 2, user_image: "female1.png", introduction: "ショッピングと映画が趣味です。" },
  { email: 'okamoto@example.com',  password: 'password', nickname: "岡本壮",     age: 30, gender_id: 1, user_image: "male1.png",   introduction: "プログラミングで副業を目指しています。" },
  { email: 'hasegawa@example.com', password: 'password', nickname: "長谷川柚",   age: 23, gender_id: 2, user_image: nil,           introduction: "料理とショッピングが好きです。" },
  { email: 'mori@example.com',     password: 'password', nickname: "森大和",     age: 27, gender_id: 1, user_image: nil,           introduction: "釣りと映画でリフレッシュしています。" },
]

user_hobbies_data = [
  # 佐藤花子
  { email: 'sato@example.com',     hobby_name: "料理" },
  { email: 'sato@example.com',     hobby_name: "ストレッチ" },
  { email: 'sato@example.com',     hobby_name: "プログラミング" },

  # 鈴木太郎
  { email: 'suzuki@example.com',   hobby_name: "釣り" },
  { email: 'suzuki@example.com',   hobby_name: "映画" },

  # 田中健二
  { email: 'tanaka@example.com',   hobby_name: "プログラミング" },
  { email: 'tanaka@example.com',   hobby_name: "映画" },

  # 山田美咲
  { email: 'yamada@example.com',   hobby_name: "料理" },
  { email: 'yamada@example.com',   hobby_name: "ショッピング" },

  # 伊藤さくら
  { email: 'ito@example.com',      hobby_name: "ショッピング" },
  { email: 'ito@example.com',      hobby_name: "ストレッチ" },

  # 渡辺翔
  { email: 'watanabe@example.com', hobby_name: "映画" },
  { email: 'watanabe@example.com', hobby_name: "釣り" },

  # 小林奈々
  { email: 'kobayashi@example.com',hobby_name: "ストレッチ" },
  { email: 'kobayashi@example.com',hobby_name: "ショッピング" },

  # 加藤大輝
  { email: 'kato@example.com',     hobby_name: "釣り" },
  { email: 'kato@example.com',     hobby_name: "料理" },

  # 吉田遥
  { email: 'yoshida@example.com',  hobby_name: "料理" },
  { email: 'yoshida@example.com',  hobby_name: "映画" },

  # 山本拓海
  { email: 'yamamoto@example.com', hobby_name: "プログラミング" },
  { email: 'yamamoto@example.com', hobby_name: "釣り" },

  # 中村愛
  { email: 'nakamura@example.com', hobby_name: "ショッピング" },
  { email: 'nakamura@example.com', hobby_name: "ストレッチ" },

  # 林勇太
  { email: 'hayashi@example.com',  hobby_name: "釣り" },
  { email: 'hayashi@example.com',  hobby_name: "料理" },

  # 木村菜摘
  { email: 'kimura@example.com',   hobby_name: "料理" },
  { email: 'kimura@example.com',   hobby_name: "プログラミング" },

  # 斉藤蓮
  { email: 'saito@example.com',    hobby_name: "映画" },
  { email: 'saito@example.com',    hobby_name: "ストレッチ" },

  # 松本彩
  { email: 'matsumoto@example.com',hobby_name: "ストレッチ" },
  { email: 'matsumoto@example.com',hobby_name: "ショッピング" },

  # 井上颯
  { email: 'inoue@example.com',    hobby_name: "プログラミング" },
  { email: 'inoue@example.com',    hobby_name: "映画" },

  # 木本里奈
  { email: 'kimoto@example.com',   hobby_name: "料理" },
  { email: 'kimoto@example.com',   hobby_name: "ショッピング" },

  # 小川誠
  { email: 'ogawa@example.com',    hobby_name: "釣り" },
  { email: 'ogawa@example.com',    hobby_name: "料理" },

  # 西村あおい
  { email: 'nishimura@example.com',hobby_name: "映画" },
  { email: 'nishimura@example.com',hobby_name: "ショッピング" },

  # 福田隼人
  { email: 'fukuda@example.com',   hobby_name: "プログラミング" },
  { email: 'fukuda@example.com',   hobby_name: "釣り" },

  # 小野梨花
  { email: 'ono@example.com',      hobby_name: "ストレッチ" },
  { email: 'ono@example.com',      hobby_name: "料理" },

  # 池田蒼
  { email: 'ikeda@example.com',    hobby_name: "料理" },
  { email: 'ikeda@example.com',    hobby_name: "釣り" },

  # 橋本夏希
  { email: 'hashimoto@example.com',hobby_name: "ショッピング" },
  { email: 'hashimoto@example.com',hobby_name: "映画" },

  # 石川悠
  { email: 'ishikawa@example.com', hobby_name: "映画" },
  { email: 'ishikawa@example.com', hobby_name: "プログラミング" },

  # 前田桃子
  { email: 'maeda@example.com',    hobby_name: "料理" },
  { email: 'maeda@example.com',    hobby_name: "ストレッチ" },

  # 藤田陸
  { email: 'fujita@example.com',   hobby_name: "釣り" },
  { email: 'fujita@example.com',   hobby_name: "ショッピング" },

  # 後藤心春
  { email: 'goto@example.com',     hobby_name: "ショッピング" },
  { email: 'goto@example.com',     hobby_name: "映画" },

  # 岡本壮
  { email: 'okamoto@example.com',  hobby_name: "プログラミング" },
  { email: 'okamoto@example.com',  hobby_name: "映画" },

  # 長谷川柚
  { email: 'hasegawa@example.com', hobby_name: "料理" },
  { email: 'hasegawa@example.com', hobby_name: "ショッピング" },

  # 森大和
  { email: 'mori@example.com',     hobby_name: "釣り" },
  { email: 'mori@example.com',     hobby_name: "映画" },
]

likes_data = [
  # 佐藤 → 複数人にいいね
  { like_email: 'sato@example.com',     liked_email: 'suzuki@example.com' },
  { like_email: 'sato@example.com',     liked_email: 'tanaka@example.com' },
  { like_email: 'sato@example.com',     liked_email: 'watanabe@example.com' },

  # 鈴木 ↔ 佐藤（相互いいね＝マッチング）
  { like_email: 'suzuki@example.com',   liked_email: 'sato@example.com' },
  { like_email: 'suzuki@example.com',   liked_email: 'kobayashi@example.com' },
  { like_email: 'suzuki@example.com',   liked_email: 'yamada@example.com' },

  # 田中
  { like_email: 'tanaka@example.com',   liked_email: 'ito@example.com' },
  { like_email: 'tanaka@example.com',   liked_email: 'kimura@example.com' },

  # 山田 ↔ 田中（相互いいね）
  { like_email: 'yamada@example.com',   liked_email: 'tanaka@example.com' },
  { like_email: 'yamada@example.com',   liked_email: 'kato@example.com' },

  # 伊藤
  { like_email: 'ito@example.com',      liked_email: 'yamamoto@example.com' },
  { like_email: 'ito@example.com',      liked_email: 'inoue@example.com' },

  # 渡辺 ↔ 小林（相互いいね）
  { like_email: 'watanabe@example.com', liked_email: 'kobayashi@example.com' },
  { like_email: 'kobayashi@example.com',liked_email: 'watanabe@example.com' },

  # 加藤
  { like_email: 'kato@example.com',     liked_email: 'nakamura@example.com' },
  { like_email: 'kato@example.com',     liked_email: 'nishimura@example.com' },

  # 吉田
  { like_email: 'yoshida@example.com',  liked_email: 'hayashi@example.com' },
  { like_email: 'yoshida@example.com',  liked_email: 'saito@example.com' },

  # 山本 ↔ 中村（相互いいね）
  { like_email: 'yamamoto@example.com', liked_email: 'nakamura@example.com' },
  { like_email: 'nakamura@example.com', liked_email: 'yamamoto@example.com' },

  # 斉藤
  { like_email: 'saito@example.com',    liked_email: 'matsumoto@example.com' },
  { like_email: 'saito@example.com',    liked_email: 'ono@example.com' },

  # 井上
  { like_email: 'inoue@example.com',    liked_email: 'goto@example.com' },
  { like_email: 'inoue@example.com',    liked_email: 'maeda@example.com' },

  # 福田 ↔ 西村（相互いいね）
  { like_email: 'fukuda@example.com',   liked_email: 'nishimura@example.com' },
  { like_email: 'nishimura@example.com',liked_email: 'fukuda@example.com' },

  # 岡本
  { like_email: 'okamoto@example.com',  liked_email: 'hasegawa@example.com' },
  { like_email: 'okamoto@example.com',  liked_email: 'kimoto@example.com' },

  # 森
  { like_email: 'mori@example.com',     liked_email: 'goto@example.com' },
  { like_email: 'mori@example.com',     liked_email: 'sato@example.com' },
]

genders_data.each do |gender_data|
  Gender.find_or_create_by!(name: gender_data[:name])
end

hobbies_data.each do |hobby_data|
  Hobby.find_or_create_by!(name: hobby_data[:name])
end

users_data.each do |user_data|
  user = User.find_or_create_by!(email: user_data[:email]) do |u|
    u.password     = user_data[:password]
    u.nickname     = user_data[:nickname]
    u.age          = user_data[:age]
    u.gender_id    = user_data[:gender_id]
    u.introduction = user_data[:introduction]
  end

  if user_data[:user_image].present? && !user.user_image.attached?
    image_path = Rails.root.join("app/assets/images/users/#{user_data[:user_image]}")
    if File.exist?(image_path)
      user.user_image.attach(
        io: File.open(image_path),
        filename: user_data[:user_image]
      )
    end
  end
end

user_hobbies_data.each do |data|
  user  = User.find_by!(email: data[:email])
  hobby = Hobby.find_by!(name: data[:hobby_name])
  UserHobby.find_or_create_by!(user: user, hobby: hobby)
end

likes_data.each do |like_data|
  like_user  = User.find_by!(email: like_data[:like_email])
  liked_user = User.find_by!(email: like_data[:liked_email])
  Like.find_or_create_by!(
    like_user_id: like_user.id,
    liked_user_id: liked_user.id
  )
end
