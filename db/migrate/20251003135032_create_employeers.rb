class CreateEmployeers < ActiveRecord::Migration[8.0]
  def change
    create_table :employeers do |t|
      t.string :emp_name
      t.string :emp_email

      t.timestamps
    end
  end
end
