class CreateHowtolists < ActiveRecord::Migration
  def change
    create_table :howtolists do |t|
      t.string :how_to

      t.timestamps
    end
  end
end
