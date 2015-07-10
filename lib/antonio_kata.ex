defmodule AntonioKata do
  import Enum
  def main(_args) do
    range = 1..8
    res = flat_map range, fn (a) ->
      flat_map range, fn (b) ->
        flat_map range, fn (c) ->
          map range, fn (d) ->
            [a,b,c,d]
          end
        end
      end
    end
    IO.inspect res
  end
end
