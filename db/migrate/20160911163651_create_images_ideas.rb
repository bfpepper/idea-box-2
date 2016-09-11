class CreateImagesIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas_images do |t|
      t.belongs_to :image, index: true
      t.belongs_to :idea, index: true

      t.timestamps
    end
  end
end
