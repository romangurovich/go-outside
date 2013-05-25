class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :host_id
      t.text :description

      t.timestamps
    end
  end
end
