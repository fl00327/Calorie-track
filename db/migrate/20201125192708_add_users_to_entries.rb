class AddUsersToEntries < ActiveRecord::Migration[5.2]
  def up
    add_reference :entries, :user, index: true
    Entry.reset_column_information
    user = User.first


    Entry.all.each do |entry|
      entry.user_id = user.id
      entry.save!
    end

    change_column_null :entries, :user_id, false
    add_foreign_key :entries, :users
  end

  def down
    remove_foreign_key :entries, :users
    remove_reference :entries, :user, index: true
  end  
end
