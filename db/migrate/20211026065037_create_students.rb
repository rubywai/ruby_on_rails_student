class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
