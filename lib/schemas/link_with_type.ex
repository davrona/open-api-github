defmodule GitHub.LinkWithType do
  @moduledoc """
  Provides struct and type for LinkWithType
  """

  @type t :: %__MODULE__{__info__: map, href: String.t(), type: String.t()}

  defstruct [:__info__, :href, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [href: :string, type: :string]
  end
end
