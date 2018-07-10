class AddUserToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :my_contacts, :user_id, :integer 
  end
end
