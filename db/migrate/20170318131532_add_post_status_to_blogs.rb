class AddPostStatusToBlogs < ActiveRecord::Migration[5.0]
  def change
     # Add the default value at the very last place
    add_column :blogs, :status, :integer, default: 0 
  end
end
