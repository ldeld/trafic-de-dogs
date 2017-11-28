class RemoveHabitutesFromDogs < ActiveRecord::Migration[5.0]
  def change
    remove_column :dogs, :habitudes, :text
  end
end
