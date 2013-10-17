class CreateHowtos < ActiveRecord::Migration
  def change
    create_table :howtos do |t|

      t.timestamps
    end
  end
end
