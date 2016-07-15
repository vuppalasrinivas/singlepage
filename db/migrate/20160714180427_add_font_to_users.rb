class AddFontToUsers < ActiveRecord::Migration
  def change
    add_column :users, :font, :string
  end
end
