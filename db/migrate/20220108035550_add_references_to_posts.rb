class AddReferencesToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :user
    add_reference :posts, :notebook
  end
end
