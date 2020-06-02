class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|
      t.boolean :status
      t.references :zone, foreign_key: true

      t.timestamps
    end
  end
end
