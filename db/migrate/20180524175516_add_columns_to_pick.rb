class AddColumnsToPick < ActiveRecord::Migration
  def change
    add_column :picks, :a16f, :string
    add_column :picks, :a16s, :string
    add_column :picks, :b16f, :string
    add_column :picks, :b16s, :string
    add_column :picks, :c16f, :string
    add_column :picks, :c16s, :string
    add_column :picks, :d16f, :string
    add_column :picks, :d16s, :string
    add_column :picks, :e16f, :string
    add_column :picks, :e16s, :string
    add_column :picks, :f16f, :string
    add_column :picks, :f16s, :string
    add_column :picks, :g16f, :string
    add_column :picks, :g16s, :string
    add_column :picks, :h16f, :string
    add_column :picks, :h16s, :string
    add_column :picks, :qf1, :string
    add_column :picks, :qf2, :string
    add_column :picks, :qf3, :string
    add_column :picks, :qf4, :string
    add_column :picks, :qf5, :string
    add_column :picks, :qf6, :string
    add_column :picks, :qf7, :string
    add_column :picks, :qf8, :string
    add_column :picks, :sf1, :string
    add_column :picks, :sf2, :string
    add_column :picks, :sf3, :string
    add_column :picks, :sf4, :string
    add_column :picks, :final1, :string
    add_column :picks, :final2, :string
    add_column :picks, :champ, :string
  end
end
