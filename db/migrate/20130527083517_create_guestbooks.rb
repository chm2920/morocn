class CreateGuestbooks < ActiveRecord::Migration
  def change
    create_table :guestbooks do |t|
      t.string :area
      t.text :text

      t.timestamps
    end
  end
end
