class CreateTowatches < ActiveRecord::Migration[5.2]
  def change
    create_table :towatches do |t|

      t.timestamps
    end
  end
end
