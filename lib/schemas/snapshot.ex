defmodule GitHub.Snapshot do
  @moduledoc """
  Provides struct and type for a Snapshot
  """
  use GitHub.Encoder

  @type t :: %__MODULE__{
          __info__: map,
          detector: map,
          job: map,
          manifests: map | nil,
          metadata: GitHub.Metadata.t() | nil,
          ref: String.t(),
          scanned: DateTime.t(),
          sha: String.t(),
          version: integer
        }

  defstruct [:__info__, :detector, :job, :manifests, :metadata, :ref, :scanned, :sha, :version]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      detector: :map,
      job: :map,
      manifests: :map,
      metadata: {GitHub.Metadata, :t},
      ref: {:string, :generic},
      scanned: {:string, :date_time},
      sha: {:string, :generic},
      version: :integer
    ]
  end
end
