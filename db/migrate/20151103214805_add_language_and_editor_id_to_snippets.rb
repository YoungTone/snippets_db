class AddLanguageAndEditorIdToSnippets < ActiveRecord::Migration
  def change
    add_reference :snippets, :language, index: true, foreign_key: true
    add_reference :snippets, :editor, index: true, foreign_key: true
  end
end
