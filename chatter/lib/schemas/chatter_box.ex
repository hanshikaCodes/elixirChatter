defmodule Chatter.Schemas.ChatterBox do
    use Ecto.Schema
  import Ecto.Changeset

  schema "chatterbox" do
    field :message, :string
    field :status, :string
    timestamps()
  end

  def changeset(changeset, params) do
      changeset
      |> cast(params, [
        :message,
        :status
      ])
      #|> validate_required([:message])
  end
end