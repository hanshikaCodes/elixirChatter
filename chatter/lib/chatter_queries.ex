defmodule Chatter.ChatterQueries do
  @moduledoc """
  The query context.
  """

  import Ecto.Query, warn: false
  alias Chatter.Repo

  alias Chatter.Schemas.ChatterBox

  @doc """
  Returns the list of coupons.

  ## Examples

      iex> list_coupons()
      [%Coupon{}, ...]

  """
  def list_chatter do
    Repo.all(Chatterbox)
  end

#ChatterBox is the schema that validates the changeset and inserts the row
  def create_chat(attrs \\ %{}) do
    %ChatterBox{}
    |> ChatterBox.changeset(attrs)
    |> Repo.insert()
  end

end