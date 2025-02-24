defmodule Transmission.TorrentSetLocation do
  alias Transmission.Utils

  def method(ids, new_path, move) do
    %{
      method: "torrent-set-location",
      arguments:
        %{
          ids: Utils.cast_ids(ids),
          location: new_path,
          move: move
        }
        |> Utils.compact()
        |> tap(&IO.inspect/1)
    }
  end
end
