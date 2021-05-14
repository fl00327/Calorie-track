class AddWeightForUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :weights, :user
  end
end
