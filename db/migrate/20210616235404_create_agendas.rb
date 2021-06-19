class CreateAgendas < ActiveRecord::Migration[6.0]
  def change
    create_table :agendas do |t|

      t.string :title, null: false
      t.text :catch_copy, null: false
      t.references :user, foreign_key: true 
      t.timestamps
    end
  end
end
