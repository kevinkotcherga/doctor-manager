class AddNameToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :name, :string
  end
end
