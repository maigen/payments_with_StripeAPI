class CreateTables < ActiveRecord::Migration
  def change
    create_table :nonprofits do |t|
      t.string :name

      t.timestamps
    end

    create_table :payments do |t|
      t.string :card_number
      t.string :cvc
      t.string :exp_month
      t.string :exp_year
      t.integer :nonprofit_id

      t.timestamps
    end

  end
end
