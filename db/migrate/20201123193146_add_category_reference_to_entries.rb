class AddCategoryReferenceToEntries < ActiveRecord::Migration[5.2]
  # refrencing the entries and category model
  def change
    add_reference :entries, :category
  end
end
