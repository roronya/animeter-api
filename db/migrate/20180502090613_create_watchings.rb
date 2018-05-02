class CreateWatchings < ActiveRecord::Migration[5.2]
  def change
    create_table :watchings do |t|

      t.timestamps
    end
  end
end
