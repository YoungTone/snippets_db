############# => INITIAL USER <= ###############

test_user = User.create(email: 'test@test.com', password: 'testing', photo: 'test', username: 'testing')

############# => TEXT EDITOR TAG List <= ###############

Editor.create(name: "Atom", icon_src: 'atom.png')
Editor.create(name: "Brackets", icon_src: 'brackets.png')
Editor.create(name: "Sublime", icon_src: 'sublime.png')
Editor.create(name: "Commande Line", icon_src: 'terminal.png')

############# => LANGUAGE LIST <= ###############

Language.create(name: "C", mode: "text/x-csrc", icon: 'c.svg')

Language.create(name: "C++", mode: "tex/x-c++scr", icon: 'cplushplus.svg')

Language.create(name: "C#", mode: "text/x-csharp", icon: 'csharp.svg')

Language.create(name: "Coffescript", mode: "text/x-coffeescript", icon: 'coffeescript.svg')

Language.create(name: "CSS", mode: "text/x-css", icon: 'css3.svg')

Language.create(name: "SCSS", mode: "text/x-scss", icon: 'scss.png')

Language.create(name: "LESS", mode: "text/x-less", icon: 'less.svg')

Language.create(name: "Dockerfile", mode: "text/x-dockerfile", icon: 'docker.svg')

Language.create(name: "Django", mode: "text/x-django", icon: 'django.svg')

Language.create(name: "HAML", mode: "text/x-haml", icon: '')

Language.create(name: "Handlebars", mode: "text/x-handlesbars-template", icon: 'handlebars.png')

Language.create(name: "EJS", mode: "application/x-ejs", icon: 'ejs.png')

Language.create(name: "ASP.NET", mode: "text/x-zspx", icon: 'dot-net.svg')

Language.create(name: "JSP", mode: "text/x-jsp", icon: 'jsp.png')

Language.create(name: "HTML", mode: "text/html", icon: 'html5.svg')

Language.create(name: "Bootstrap", mode: "text/html", icon: 'bootstrap.svg')

Language.create(name: "Java", mode: "text/x-java", icon: 'java.svg')

Language.create(name: "Jade", mode: "text/x-jade", icon: 'jade.png')

Language.create(name: "JavaScript", mode: "text/javascript", icon: 'javascript.svg')

Language.create(name: "Angular.js", mode: "text/javascript", icon: 'angularjs.svg')

Language.create(name: "Backbone.js", mode: "text/javascript", icon: 'backbonejs.svg')

Language.create(name: "Ember.js", mode: "text/javascript", icon: 'emberjs.png')

Language.create(name: "React.js", mode: "text/javascript", icon: 'react.svg')

Language.create(name: "jQuery", mode: "text/javascript", icon: 'jquery.svg')

Language.create(name: "Node.js", mode: "text/javascript", icon: 'nodejs.svg')

Language.create(name: "Perl", mode: "text/x-perl", icon: 'perl.png')

Language.create(name: "Wrapped PHP", mode: "application/x-httpd-php", icon: 'php.svg')

Language.create(name: "PHP", mode: "text/x-php", icon: 'php.svg')

Language.create(name: "Python", mode: "text/x-python", icon: 'python.svg')

Language.create(name: "R", mode: "text/x-rsrc", icon: 'R.png')

Language.create(name: "Ruby", mode: "text/x-ruby", icon: 'ruby.svg')

Language.create(name: "Ruby on Rails", mode: "text/x-ruby", icon: 'rails.svg')

Language.create(name: "Sass", mode: "text/x-sass", icon: 'sass.svg')

Language.create(name: "Shell", mode: "text/x-sh", icon: 'shell.png')

Language.create(name: "zsh", mode: "text/x-xh", icon: 'zsh.png')

Language.create(name: "SQL", mode: "text/x-sql", icon: 'sql.png')

Language.create(name: "Swift", mode: "text/x-swift", icon: 'swift.png')
