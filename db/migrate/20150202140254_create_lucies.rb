class CreateLucies < ActiveRecord::Migration
  def change
    create_table :lucies do |t|
      t.string :title

      t.timestamps
    end
  end
end
