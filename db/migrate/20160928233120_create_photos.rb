class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
    	t.string :title
    	t.text :decription
    	t.string :img_url
    	
      t.timestamps
    end
  end
end