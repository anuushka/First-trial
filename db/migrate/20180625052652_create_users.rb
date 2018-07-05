class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name, null:false
      t.string :fb_id, null:true
      t.integer :user_type, null:false, default:0
      # t.string :google_id, null:false
      t.timestamps
    end
  #   add_index :users, :email, unique: true
  end
end
