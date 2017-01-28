class CreateBreed < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.text      :name

      t.timestamps null: false
    end
    add_column :horses, :breed_id, :integer
  end
end
