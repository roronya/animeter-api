class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :broadcasted_at
      t.text :summary

      t.timestamps
    end
  end
end
