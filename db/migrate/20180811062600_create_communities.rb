class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :community_name
      t.string :community_detail
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
