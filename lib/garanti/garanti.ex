defmodule Garanti.CLI do
  def main(args) do
    parse_args(args)
    |> process_parse
  end


  defp parse_args(args) do
    parse = OptionParser.parse(args, switches: [help: :boolean], aliases: [h: :help])

    case parse do
      {[help: true], _, _}
        -> :help
      _ -> :help
    end
  end

  def process_parse(:help) do
    IO.puts "Dette er for hjelp"
  end

end
