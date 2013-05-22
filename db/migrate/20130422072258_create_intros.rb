class CreateIntros < ActiveRecord::Migration
  def change
    create_table :intros do |t|
      t.string :title
      t.text :content
      t.string :en_title
      t.text :en_content
    end
  end
end
