defmodule Transmission.TorrentAdd do
  alias Transmission.Utils

  @default_options [filename: nil, metainfo: nil, "download-dir": nil]

  def method(options \\ []) do
    options = Keyword.merge(@default_options, options)

    %{
      method: "torrent-add",
      arguments:
        %{
          filename: options[:filename],
          metainfo: options[:metainfo],
          "download-dir": options[:"download-dir"]
        }
        |> Utils.compact()
    }
  end
end
