class CreatePotlucks < ActiveRecord::Migration
  def up
    create_table :potlucks do |p|
      p.string :name
    end
  end

  def down
    drop_table :potlucks
  end
end
