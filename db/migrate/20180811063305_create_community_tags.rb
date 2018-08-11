class CreateCommunityTags < ActiveRecord::Migration[5.1]
  def change
    create_table :community_tags do |t|
      t.belongs_to :community, foreign_key: true
      t.belongs_to :community_tag_list, foreign_key: true
      t.timestamps
    end
  end
end
