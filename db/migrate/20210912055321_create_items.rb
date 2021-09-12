class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
