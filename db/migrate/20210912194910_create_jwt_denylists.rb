class CreateJwtDenylists < ActiveRecord::Migration[6.1]
  def change
    create_table :jwt_denylists do |t|
      t.string :jti, null: false, index: true
      t.datetime :exp, null: false
      t.timestamps
    end
  end
end
