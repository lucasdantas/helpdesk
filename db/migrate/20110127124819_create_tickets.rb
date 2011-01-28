class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :titulo
      t.references :customer
      t.string :status, :default => 'ABERTO'
      t.text :descricao
      t.text :conclusao
      t.integer :operator_ini
      t.integer :operator_fim

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
