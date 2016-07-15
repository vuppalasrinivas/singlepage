class AddFsizeToUser < ActiveRecord::Migration
  def change
    add_column :users, :fsize, :string
  end
end
