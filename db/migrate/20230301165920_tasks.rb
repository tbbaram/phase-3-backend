class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :priority
      t.integer :category_id
    end
  end
end
