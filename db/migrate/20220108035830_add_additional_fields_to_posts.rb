class AddAdditionalFieldsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :enclosure, :string
    add_column :posts, :wpid, :integer
  end
end
