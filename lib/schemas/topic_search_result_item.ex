defmodule GitHub.TopicSearchResultItem do
  @moduledoc """
  Provides struct and type for TopicSearchResultItem
  """

  @type t :: %__MODULE__{
          aliases: [map] | nil,
          created_at: String.t(),
          created_by: String.t() | nil,
          curated: boolean,
          description: String.t() | nil,
          display_name: String.t() | nil,
          featured: boolean,
          logo_url: String.t() | nil,
          name: String.t(),
          related: [map] | nil,
          released: String.t() | nil,
          repository_count: integer | nil,
          score: number,
          short_description: String.t() | nil,
          text_matches: [map] | nil,
          updated_at: String.t()
        }

  defstruct [
    :aliases,
    :created_at,
    :created_by,
    :curated,
    :description,
    :display_name,
    :featured,
    :logo_url,
    :name,
    :related,
    :released,
    :repository_count,
    :score,
    :short_description,
    :text_matches,
    :updated_at
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      aliases: {:array, :map},
      created_at: :string,
      created_by: :string,
      curated: :boolean,
      description: :string,
      display_name: :string,
      featured: :boolean,
      logo_url: :string,
      name: :string,
      related: {:array, :map},
      released: :string,
      repository_count: :integer,
      score: :number,
      short_description: :string,
      text_matches: {:array, :map},
      updated_at: :string
    ]
  end
end
