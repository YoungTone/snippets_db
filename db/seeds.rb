
##User
test_user = User.create(email: 'test@test.com', password: 'testing', photo: 'test', username: 'testing')

##Language
test_language = Language.create(name: "Ruby", highlight_class: "rb")

##Editor
test_editor = Editor.create(icon_src: "http://bungeshea.com/wp-content/uploads/sublime-text.png", name: "Sublime")

##Snippet

test_snippet = Snippet.create(name: 'Clownhat', description: 'ERB tags for rails', code: '<snippet>
  <content><![CDATA[
<%= %>
]]></content>
  <!-- Optional: Set a tabTrigger to define how to trigger the snippet -->
  <tabTrigger>ch</tabTrigger>
  <!-- Optional: Set a scope to limit where the snippet will trigger -->
  <!-- <scope>source.python</scope> -->
</snippet>
', user_id: User.sample, language_id: Language.sample, editor_id: Editor.sample)
