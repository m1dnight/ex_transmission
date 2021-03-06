defmodule Transmission.TorrentStartNow do
  alias Transmission.Utils

  def method(ids) do
    %{
      method: "torrent-start-now",
      arguments:
        %{
          ids: Utils.cast_ids(ids)
        }
        |> Utils.compact()
    }
  end
end
