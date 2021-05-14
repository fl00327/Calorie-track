class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.decimal :weight

      t.timestamps
    end
  end
end
