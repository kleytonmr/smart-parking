class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|
      t.boolean :status
      t.string :zone
      t.string :position

      t.timestamps
    end
  end
end
