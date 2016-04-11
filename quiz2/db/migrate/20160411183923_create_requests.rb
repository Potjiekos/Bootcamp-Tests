class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :name
      t.text :email
      t.text :department
      t.text :message

      t.timestamps null: false
    end
  end
end
