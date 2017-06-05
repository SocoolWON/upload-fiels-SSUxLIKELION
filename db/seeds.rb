# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
pass = "pass123"
1.upto(5) do |i|
    User.create(
            email: "user#{i}@example.com",
            password: pass,
            password_confirmation: pass
        )
end

1.upto(5) do |i|
    Post.create(
            title: "오늘 하루도 보람차게 잘 살았습니다",
            content: "아침은 가볍고, 점심은 무겁게, 저녁은 더욱 가볍게 먹습니다.",
            user_id: i
        )
end
