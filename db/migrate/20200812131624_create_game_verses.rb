class CreateGameVerses < ActiveRecord::Migration[6.0]
  def change
    create_table :game_verses do |t|
      t.integer :book_number
      t.integer :chapter_number
      t.integer :verse_number
      t.references :game_template, null: false, foreign_key: true
      t.string :verse_text

      t.timestamps
    end
  end
end
