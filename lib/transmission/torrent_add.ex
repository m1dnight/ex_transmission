defmodule Transmission.TorrentAdd do
  alias Transmission.Utils

  @default_options [filename: nil, metainfo: nil, "download-dir": nil, paused: false]

  def method(options \\ []) do
    options = Keyword.merge(@default_options, options)

    %{
      method: "torrent-add",
      arguments:
        %{
          filename: options[:filename],
          metainfo: options[:metainfo],
          "download-dir": options[:"download-dir"],
          paused: options[:paused]
        }
        |> Utils.compact()
    }
  end
end
