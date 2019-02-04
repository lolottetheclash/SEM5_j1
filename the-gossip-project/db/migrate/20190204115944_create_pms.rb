class CreatePms < ActiveRecord::Migration[5.2]
  def change
    create_table :pms do |t|
      t.string :content
      t.belongs_to :recipient, index: true
      t.belongs_to :sender, index: true
      t.timestamps
    end
  end
end
