class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      
      t.string :title
      t.integer :point
      t.integer :qw_id

      t.timestamps
    end
  end
end
