class CreateWatcheds < ActiveRecord::Migration[5.2]
  def change
    create_table :watcheds do |t|
      t.text :comment
      t.date :watched_at

      t.timestamps
    end
  end
end
