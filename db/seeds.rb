User.create!(name:  "管理者",
             email: "admin@exsample.com",
             password:  "adminsan",
             password_confirmation: "adminsan",
             admin: true)

Sample.create!(
  category: "1.床（畳、フローリング、カーペットなど）",
  field: "usual",
  content: "フローリングワックスがけ"
)

Sample.create!(
  category: "1.床（畳、フローリング、カーペットなど）",
  field: "unusual",
  content: "たばこによるカーペット損傷"
)

Sample.create!(
  category: "4.その他",
  field: "usual",
  content: "鍵の交換（紛失・毀損なし）"
)
