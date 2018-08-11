class CreateCommunityTagLists < ActiveRecord::Migration[5.1]
  def change
    create_table :community_tag_lists do |t|
      t.string :tag_name

      t.timestamps
    end
  end
end
