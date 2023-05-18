defmodule GitHub.Hook.Response do
  @moduledoc """
  Provides struct and type for HookResponse
  """

  @type t :: %__MODULE__{
          __info__: map,
          code: integer | nil,
          message: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:__info__, :code, :message, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [code: {:nullable, :integer}, message: {:nullable, :string}, status: {:nullable, :string}]
  end
end
