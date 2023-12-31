defmodule GitHub.SecretScanning.Location do
  @moduledoc """
  Provides struct and type for a SecretScanning.Location
  """
  use GitHub.Encoder

  @type t :: %__MODULE__{
          __info__: map,
          details:
            GitHub.SecretScanning.LocationCommit.t()
            | GitHub.SecretScanning.LocationIssueBody.t()
            | GitHub.SecretScanning.LocationIssueComment.t()
            | GitHub.SecretScanning.LocationIssueTitle.t(),
          type: String.t()
        }

  defstruct [:__info__, :details, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      details:
        {:union,
         [
           {GitHub.SecretScanning.LocationCommit, :t},
           {GitHub.SecretScanning.LocationIssueBody, :t},
           {GitHub.SecretScanning.LocationIssueComment, :t},
           {GitHub.SecretScanning.LocationIssueTitle, :t}
         ]},
      type: {:enum, ["commit", "issue_title", "issue_body", "issue_comment"]}
    ]
  end
end
