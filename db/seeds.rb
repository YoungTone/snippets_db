############# => INITIAL USER <= ###############

test_user = User.create(email: 'test@test.com', password: 'testing', photo: 'test', username: 'testing')

############# => TEXT EDITOR TAG List <= ###############

Editor.create(name: "Atom", icon_src: "")
Editor.create(name: "Brackets", icon_src: "")
Editor.create(name: "Sublime", icon_src: "")
Editor.create(name: "Commande Line", icon_src: "")

############# => LANGUAGE LIST <= ###############

Language.create(name: "C", mode: "text/x-csrc", icon: "src")

Language.create(name: "C++", mode: "tex/x-c++scr", icon: "src")

Language.create(name: "C#", mode: "text/x-csharp", icon: "src")

Language.create(name: "Objective-C", mode: "text/x-objectivec", icon: "src")

Language.create(name: "Scala", mode: "text/x-scala", icon: "src")

Language.create(name: "Coffescript", mode: "text/x-coffeescript", icon: "src")

Language.create(name: "CSS", mode: "text/x-css", icon: "src")

Language.create(name: "SCSS", mode: "text/x-scss", icon: "src")

Language.create(name: "LESS", mode: "text/x-less", icon: "src")

Language.create(name: "Dockerfile", mode: "text/x-dockerfile", icon: "src")

Language.create(name: "Django", mode: "text/x-django", icon: "src")

Language.create(name: "HAML", mode: "text/x-haml", icon: "src")

Language.create(name: "Handlebars", mode: "text/x-handlesbars-template", icon: "src")

Language.create(name: "EJS", mode: "application/x-ejs", icon: "src")

Language.create(name: "ASP.NET", mode: "text/x-zspx", icon: "src")

Language.create(name: "JSP", mode: "text/x-jsp", icon: "src")

Language.create(name: "HTTP", mode: "message/http", icon: "src")

Language.create(name: "HTML", mode: "text/html", icon: "src")

Language.create(name: "Java", mode: "text/x-java", icon: "src")

Language.create(name: "Jade", mode: "text/x-jade", icon: "src")

Language.create(name: "JavaScript", mode: "text/javascript", icon: "src")

Language.create(name: "Angular.js", mode: "text/javascript", icon: "src")

Language.create(name: "Backbone.js", mode: "text/javascript", icon: "src")

Language.create(name: "Ember.js", mode: "text/javascript", icon: "src")

Language.create(name: "Knockout.js", mode: "text/javascript", icon: "src")

Language.create(name: "React.js", mode: "text/javascript", icon: "src")

Language.create(name: "jQuery", mode: "text/javascript", icon: "src")

Language.create(name: "Perl", mode: "text/x-perl", icon: "src")

Language.create(name: "Wrapped PHP", mode: "application/x-httpd-php", icon: "src")

Language.create(name: "PHP", mode: "text/x-php", icon: "src")

Language.create(name: "Python", mode: "text/x-python", icon: "src")

Language.create(name: "R", mode: "text/x-rsrc", icon: "src")

Language.create(name: "Ruby", mode: "text/x-ruby", icon: "src")

Language.create(name: "Sass", mode: "text/x-sass", icon: "src")

Language.create(name: "Shell", mode: "text/x-sh", icon: "src")

Language.create(name: "zsh", mode: "text/x-xh", icon: "src")

Language.create(name: "SQL", mode: "text/x-sql", icon: "src")

Language.create(name: "Swift", mode: "text/x-swift", icon: "src")
