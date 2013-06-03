class CreateKfs < ActiveRecord::Migration
  def change
    create_table :kfs do |t|
      t.string :stype
      t.string :title
      t.string :account
    end
  end
end
