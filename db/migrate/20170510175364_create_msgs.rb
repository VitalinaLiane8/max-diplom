class CreateMsgs < ActiveRecord::Migration[5.0]
  def change
    create_table :msgs do |t|
      
      t.string :title
      t.string :field

      t.timestamps
    end
  end
end
