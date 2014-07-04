class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.integer :views
      t.integer :die_votes
      t.integer :fun_votes
      t.string :thumbnail
      t.string :content_image
      t.string :content_video
      t.text :content_html
      t.string :keywords
      t.integer :priority
      t.references :slider, index: true
      t.references :category, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
