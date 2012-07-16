class AddRemoveXAndAutosomesFlag < ActiveRecord::Migration
  include ResourceTools::ResourceTableMigration

  def change
    ActiveRecord::Base.transaction do
      change_resource_table(:studies) do |t|
        t.column(:remove_x_and_autosomes, :string, :null => false, :default => 'No')
      end
    end
  end
end
