class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :number
      t.text :content
      t.references :howtolist

      t.timestamps
    end
    add_index :steps, :howtolist_id
  end
end
