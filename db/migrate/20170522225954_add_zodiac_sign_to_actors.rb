class AddZodiacSignToActors < ActiveRecord::Migration[5.0]
  def change
    add_column :actors, :zodiac_sign, :string
  end
end
