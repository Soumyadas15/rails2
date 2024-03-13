class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name, limit: 30
      t.integer :age
      t.decimal :salary
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
