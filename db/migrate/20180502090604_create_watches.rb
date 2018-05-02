class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|

      t.timestamps
    end
  end
end
