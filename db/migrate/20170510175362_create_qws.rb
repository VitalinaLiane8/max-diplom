class CreateQws < ActiveRecord::Migration[5.0]
  def change
    create_table :qws do |t|
      
      t.string :title
      t.integer :test_id

      t.timestamps
    end
  end
end
