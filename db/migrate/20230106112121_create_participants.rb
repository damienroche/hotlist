class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :name, null: false
      t.string :color, default: "%06x" % (rand * 0xffffff)
      t.references :list, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
