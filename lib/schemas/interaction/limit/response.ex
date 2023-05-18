defmodule GitHub.Interaction.Limit.Response do
  @moduledoc """
  Provides struct and type for InteractionLimitResponse
  """

  @type t :: %__MODULE__{
          __info__: map,
          expires_at: String.t(),
          limit: String.t(),
          origin: String.t()
        }

  defstruct [:__info__, :expires_at, :limit, :origin]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [expires_at: :string, limit: :string, origin: :string]
  end
end
