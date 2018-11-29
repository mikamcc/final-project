class CreateQuotationsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations_users do |t|
      t.integer :user_id
      t.integer :quotation_id
    end
  end
end
