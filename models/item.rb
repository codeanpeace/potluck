class Item < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :person
  belongs_to :potluck

  def list_of_tags
    self.tags.map{|tag| tag.name}.join(", ")
  end
end