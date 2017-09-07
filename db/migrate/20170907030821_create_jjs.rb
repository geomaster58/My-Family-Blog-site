class CreateJjs < ActiveRecord::Migration[5.1]
  def change
    create_table :jjs do |t|
      t.string :header
      t.text :body

      t.timestamps
    end
  end
end
