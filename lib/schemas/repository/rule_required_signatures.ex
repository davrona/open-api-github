defmodule GitHub.Repository.RuleRequiredSignatures do
  @moduledoc """
  Provides struct and type for RepositoryRuleRequiredSignatures
  """

  @type t :: %__MODULE__{type: String.t()}

  defstruct [:type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [type: :string]
  end
end
