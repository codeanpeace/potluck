class CreateItems < ActiveRecord::Migration
  def up
    create_table :items do |i|
      i.string :name
      i.integer :person_id
      i.integer :potluck_id
    end
  end

  def down
    drop_table :items
  end
end
