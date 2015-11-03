require 'rails_helper'

feature 'creating a snippet' do
  let(:user) {User.create(email: 'test@test.com', password: 'testing', photo: 'test', username: 'testing')}

  let(:language) {Language.create(name: "Ruby", highlight_class: "rb")}

  let(:editor) {Editor.create(icon_src: "http://bungeshea.com/wp-content/uploads/sublime-text.png", name: "Sublime")}

  let(:snippet) {Snippet.create(name: 'Clownhat', description: 'ERB tags for rails', code: '<snippet>
  <content><![CDATA[
<%= %>
]]></content>
  <!-- Optional: Set a tabTrigger to define how to trigger the snippet -->
  <tabTrigger>ch</tabTrigger>
  <!-- Optional: Set a scope to limit where the snippet will trigger -->
  <!-- <scope>source.python</scope> -->
</snippet>
', user_id: User.sample, language_id: Language.sample, editor_id: Editor.sample)}

  scenario "creating succesfully" do
    visit new_snippet_path
    within (".snippet_form") do
      fill_in 'snippet_name', with: snippet.name
      fill_in 'snippet_description', with: snippet.description
      fill_in 'snippet_code', with: snippet.code
      fill_in 'language_id', with: language.id
      fill_in 'editor_id', with: editor.id
    end
    click_button "Create Snippet"
    expect(page).to have_content "Thanks for Contributing"
    expect(page.current_path).to eq user_snippet_path[user.id]

    end
  end

