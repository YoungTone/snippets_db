class ChangeHighlightNameToMode < ActiveRecord::Migration
  def change
  	rename_column :languages, :highlight_class, :mode
  end
end
