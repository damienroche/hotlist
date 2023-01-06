class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists, id: :uuid  do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
