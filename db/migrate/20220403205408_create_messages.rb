class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :username
      t.string :color
      t.string :effect

      t.timestamps
    end
  end
end
