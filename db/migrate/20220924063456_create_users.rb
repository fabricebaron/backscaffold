class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :Prénom
      t.string :Nom
      t.string :Email
      t.date :Date_de_naissance
      t.integer :Numéro
      t.text :Description

      t.timestamps
    end
  end
end
