class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      
      t.string :test_title
      t.integer :mark
      t.integer :test_id

      t.timestamps
    end
  end
end
