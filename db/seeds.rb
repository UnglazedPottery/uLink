
richard = User.create({username: "Richard", password: "Rockets94"})
bob = User.create({username: "Bob", password: "bob"})

html = Topic.create({name: "HTML"})
ruby = Topic.create({name: "Ruby"})
javascript = Topic.create({name: "javascript"})

post1 = Post.create({url: "sdfsdf", note: "beginner HTML guide"})
post2 = Post.create({url: "sdfuhgsdf", note: "beginner ruby guide"})