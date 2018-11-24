class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.integer :user_id
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
