class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.has_many :orders
      t.boolean :is_vendor

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
