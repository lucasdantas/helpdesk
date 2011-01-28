class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.string :departamento
      t.references :institution

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
