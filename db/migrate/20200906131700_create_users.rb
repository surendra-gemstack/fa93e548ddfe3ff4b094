class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :followers_list
      t.string :following_list

      t.timestamps
    end
  end
end
