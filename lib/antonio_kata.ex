defmodule AntonioKata do
  def main(_args) do
    range = 1..8
    res = Enum.flat_map range, fn (a) ->
      Enum.flat_map range, fn (b) ->
        Enum.flat_map range, fn (c) ->
          Enum.map range, fn (d) ->
            [a,b,c,d]
          end
        end
      end
    end
    IO.inspect length(res)
  end
end
