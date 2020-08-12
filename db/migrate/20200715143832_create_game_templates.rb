class CreateGameTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :game_templates do |t|
      t.text :verse_list

      t.timestamps
    end
  end
end
