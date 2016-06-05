class CreateRtes < ActiveRecord::Migration
  def change
    create_table :rtes do |t|
      t.string :name
      t.string :place
      t.float :date
      t.string :organiser
      t.string :volunteer
      t.string :school

      t.timestamps null: false
    end
  end
end
