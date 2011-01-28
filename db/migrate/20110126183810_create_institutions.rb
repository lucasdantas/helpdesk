class CreateInstitutions < ActiveRecord::Migration
  def self.up
    create_table :institutions do |t|
      t.string :nome
      t.string :fone1
      t.string :fone2
      t.string :email
      t.string :responsavel

      t.timestamps
    end
  end

  def self.down
    drop_table :institutions
  end
end
