class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address_line_1
      t.string :address_line_2
      t.string :country
      t.string :state
      t.string :city
      t.string :pincode

      t.timestamps
    end
  end
end
