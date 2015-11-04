class ChangeHighlightNameToMode < ActiveRecord::Migration
  def change
  	rename_column :languages, :highlight_class, :mode
  	add_column :languages, :icon, :string
  end
end
