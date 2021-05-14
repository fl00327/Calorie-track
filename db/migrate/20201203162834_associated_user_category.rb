class AssociatedUserCategory < ActiveRecord::Migration[5.2]
  # assinging a user to a category
  def change
     add_reference :categories, :user
  end
end
