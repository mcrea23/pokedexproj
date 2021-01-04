class CreatePokedexprojs < ActiveRecord::Migration
  def change
    create_table :pokedexprojs do |t|

      t.timestamps null: false
    end
  end
end
