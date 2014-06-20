class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end
end
