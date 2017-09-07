class CreateCodyAndAmandas < ActiveRecord::Migration[5.1]
  def change
    create_table :cody_and_amandas do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
