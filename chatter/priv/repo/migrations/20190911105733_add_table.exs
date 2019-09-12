defmodule Chatter.Repo.Migrations.AddTable do
  use Ecto.Migration

    def change do
    create table(:chatterbox) do
        add :message, :string, size: 100
        add :status, :string, size: 40
        timestamps()
    end
  end
end
