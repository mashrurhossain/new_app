class CraatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.integer :user_id
  		t.string :title
  		t.text :description

  		t.timestamps
  	end
  end
end
