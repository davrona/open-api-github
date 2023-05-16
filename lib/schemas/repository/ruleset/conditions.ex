defmodule GitHub.Repository.Ruleset.Conditions do
  @moduledoc """
  Provides struct and type for RepositoryRulesetConditions
  """

  @type t :: %__MODULE__{ref_name: map | nil}

  defstruct [:ref_name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [ref_name: :map]
  end
end