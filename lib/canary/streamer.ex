defmodule Canary.Streamer do

  def start do
    spawn(__MODULE__, :publish, [])
  end

  def publish do
    :pg2.create(:stream_subscribers)

    stream = ExTwitter.stream_sample  |>
      Stream.map(fn(t) -> t.text end) |>
      Stream.map(fn(text) -> 
        for pid <- :pg2.get_members(:stream_subscribers) do
          send(pid, text)
        end
      end)
    Enum.to_list(stream)
  end

end
