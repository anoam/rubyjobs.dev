# frozen_string_literal: true

Hanami::Model.migration do
  up do
    alter_table(:vacancies) do
      drop_column :archived
    end
  end

  down do
    alter_table(:vacancies) do
      add_column :archived, TrueClass
    end
  end
end
