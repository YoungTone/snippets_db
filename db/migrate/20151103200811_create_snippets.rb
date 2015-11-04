class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :code
      t.string :description
      t.string :name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
