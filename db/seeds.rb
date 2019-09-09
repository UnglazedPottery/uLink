User.destroy_all
Post.destroy_all
Topic.destroy_all


richard = User.create({username: "Richard", password: "Rockets94"})
bob = User.create({username: "Bob", password: "bob"})

html_topic = Topic.create({name: "HTML"})
ruby_topic = Topic.create({name: "Ruby"})
javascript_topic = Topic.create({name: "Javascript"})

post1 = Post.create({url: "https://www.w3schools.com/html/default.asp", note: "w3schools HTML tutorial", user_id: 1, topic_id: 1})
post2 = Post.create({url: "https://www.codecademy.com/learn/learn-html", note: "codeacademy HTML intro course", user_id: 1, topic_id: 1})

