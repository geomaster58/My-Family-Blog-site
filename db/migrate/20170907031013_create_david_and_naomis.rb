class CreateDavidAndNaomis < ActiveRecord::Migration[5.1]
  def change
    create_table :david_and_naomis do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
