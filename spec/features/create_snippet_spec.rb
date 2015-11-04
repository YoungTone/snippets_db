require 'rails_helper'

feature 'creating a snippet' do
  background do
    visit new_snippet_path
  end

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
    within (".snippet_form") do
      fill_in 'snippet_name', with: snippet.name
      fill_in 'snippet_description', with: snippet.description
      fill_in 'snippet_code', with: snippet.code
      fill_in 'language_id', with: language.id
      fill_in 'editor_id', with: editor.id
    end
    click_button "Create Snippet"
    expect(page).to have_content "Thanks for contributing"
    expect(page.current_path).to eq user_snippets_path(user)
  end
  scenario "creating unsuccesfully" do
    within (".snippet_form") do
      fill_in 'snippet_name', with: ''
      fill_in 'snippet_description', with: ''
      fill_in 'snippet_code', with: ''
      fill_in 'language_id', with: ''
      fill_in 'editor_id', with: ''
    end
    click_button "Create Snippet"
    expect(page).to have_content "Snippet form can't be blank"
  end
  scenario "creating duplicate" do
    within (".snippet_form") do
      fill_in 'snippet_name', with: 'whatever'
      fill_in 'snippet_description', with: 'whatever'
      fill_in 'snippet_code', with: snippet.code
      fill_in 'language_id', with: 'whatever'
      fill_in 'editor_id', with: 'whatever'
    end
    click_button "Create Snippet"
    expect(page).to have_content "A snippet already exisits with your code"
  end
end


feature 'editing a snippet' do
  background do
    visit edit_snippet_path
  end

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
  scenario "editing succesfully" do
    within (".snippet_form") do
      fill_in 'snippet_name', with: snippet.name
      fill_in 'snippet_description', with: snippet.description
      fill_in 'snippet_code', with: snippet.code
      fill_in 'language_id', with: language.id
      fill_in 'editor_id', with: editor.id
    end
    click_button "Confirm Edit"
    expect(page).to have_content "Edit Succesful"
    expect(page.current_path).to eq user_snippets_path(user)
  end
  scenario "editing unsuccesfully" do
    within (".snippet_form") do
      fill_in 'snippet_name', with: ''
      fill_in 'snippet_description', with: ''
      fill_in 'snippet_code', with: ''
      fill_in 'language_id', with: ''
      fill_in 'editor_id', with: ''
    end
    click_button "Confirm Edit"
    expect(page).to have_content "Snippet form can't be blank"
  end
  scenario "editing duplicate" do
    within (".snippet_form") do
      fill_in 'snippet_name', with: 'whatever'
      fill_in 'snippet_description', with: 'whatever'
      fill_in 'snippet_code', with: snippet.code
      fill_in 'language_id', with: 'whatever'
      fill_in 'editor_id', with: 'whatever'
    end
    click_button "Edit Snippet"
    expect(page).to have_content "A snippet already exisits with your code"
  end
end

feature 'deleting a snippet' do
  end
  scenario "succesfully deleting" do
    expect(page.current_path).to eq edit_snippet_path
    clink_link "Delete Snippet"
    expect(page.current_path).to eq user_snippets_path(user)
  end






