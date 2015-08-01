class CreateLifeChangeUnits < ActiveRecord::Migration
  def change
    create_table :life_change_units do |t|

      t.timestamps null: false
    end
  end
end
