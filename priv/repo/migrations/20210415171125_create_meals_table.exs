defmodule Exmeal.Repo.Migrations.CreateMealsTable do
  use Ecto.Migration

  def change do
    create table(:meals) do
      add(:description, :string)
      add(:date, :date)
      add(:calories, :integer)

      timestamps()
    end

    create(unique_index(:meals, [:id]))
  end
end
