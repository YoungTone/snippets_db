class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :highlight_class
      t.string :name

      t.timestamps null: false
    end
  end
end
