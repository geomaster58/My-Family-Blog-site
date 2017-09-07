class CreateTomAndMoms < ActiveRecord::Migration[5.1]
  def change
    create_table :tom_and_moms do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
