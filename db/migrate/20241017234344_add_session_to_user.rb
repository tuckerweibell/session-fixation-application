class AddSessionToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :session, :string
  end
end
