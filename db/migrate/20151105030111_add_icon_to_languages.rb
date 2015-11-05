class AddIconToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :icon, :string
  end
end
