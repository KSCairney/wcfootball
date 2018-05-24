class AddMoreColumnsToPick < ActiveRecord::Migration
  def change
    add_column :picks, :arussia, :integer
    add_column :picks, :asaudiarabia, :integer
    add_column :picks, :aegypt, :integer
    add_column :picks, :auruguay, :integer
    add_column :picks, :bmorocco, :integer
    add_column :picks, :biran, :integer
    add_column :picks, :bportugal, :integer
    add_column :picks, :bspain, :integer
    add_column :picks, :cfrance, :integer
    add_column :picks, :caustralia, :integer
    add_column :picks, :cperu, :integer
    add_column :picks, :cdenmark, :integer
    add_column :picks, :dargentina, :integer
    add_column :picks, :diceland, :integer
    add_column :picks, :dcroatia, :integer
    add_column :picks, :dnigeria, :integer
    add_column :picks, :ecostarica, :integer
    add_column :picks, :eserbia, :integer
    add_column :picks, :ebrazil, :integer
    add_column :picks, :eswitzerland, :integer
    add_column :picks, :fgermany, :integer
    add_column :picks, :fmexico, :integer
    add_column :picks, :fsweden, :integer
    add_column :picks, :fsouthkorea, :integer
    add_column :picks, :gbelgium, :integer
    add_column :picks, :gpanama, :integer
    add_column :picks, :gtunisia, :integer
    add_column :picks, :gengland, :integer
    add_column :picks, :hcolombia, :integer
    add_column :picks, :hjapan, :integer
    add_column :picks, :hpoland, :integer
    add_column :picks, :hsenegal, :integer
  end
end
