class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :type           # borrower, banker
      t.timestamps null: false
    end

    create_table :profiles do |t|
      t.belongs_to :user, index: true
      t.string :firstname
      t.string :lastname
      t.datetime :birthdate
      t.string :address
      t.string :contactno
      t.timestamps null: false
    end

    create_table :subscribers do |t|
      t.belongs_to :user, index: true
      t.timestamps null: false
    end

    create_table :bankers do |t|
      t.belongs_to :user, index: true
      t.belongs_to :subscriber, index: true
      t.timestamps null: false
    end

    create_table :borrowers do |t|
      t.belongs_to :user, index: true
      t.timestamps null: false
    end

    create_table :amount_loans do |t|
      t.belongs_to :profile, index: true
      t.decimal :amount, precision: 5, scale: 2
      t.timestamps null: false
    end

  end
end
