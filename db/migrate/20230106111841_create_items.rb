class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.references :list, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
