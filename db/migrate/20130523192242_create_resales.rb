class CreateResales < ActiveRecord::Migration
  def self.up
    create_table :resales do |t|
      t.string :name
      t.string :mail
      t.string :cpf
      t.string :rg
      t.string :address
      t.string :complement
      t.string :hood
      t.string :cep
      t.string :city
      t.string :state
      t.text :message
      t.string :region

      t.timestamps
    end
  end

  def self.down
    drop_table :resales
  end
end
