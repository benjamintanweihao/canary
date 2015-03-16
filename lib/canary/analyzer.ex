defmodule Canary.Analyzer do

  def start(keyword \\ "") do
    pid = spawn(__MODULE__, :loop, [keyword])
    :pg2.join(:stream_subscribers, pid)
    pid
  end

  def loop(keyword) do
    receive do
      text ->
        keyword = String.downcase(keyword)
        text    = String.downcase(text)

        if String.contains?(text, keyword) do
          IO.puts text
        end
    end
    loop(keyword)
  end

end
