class AddPhoneToResale < ActiveRecord::Migration
  def self.up
    add_column :resales, :phone, :string
  end

  def self.down
    remove_column :resales, :phone
  end
end
