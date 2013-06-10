class ItemsTagsBridge < ActiveRecord::Migration
  def up
    create_table :items_tags do |b|
      b.integer :item_id
      b.integer :tag_id
    end
  end

  def down
    drop_table :items_tags
  end
end
