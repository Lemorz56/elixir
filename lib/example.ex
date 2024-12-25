defmodule Example do
  @moduledoc """
  Documentation for `Example`.
  """
  use Application
  alias UUID
  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    time = DateTime.new!(Date.new!(2025, 1, 1), Time.new!(0, 0, 0, 0))
    time_till = DateTime.diff(time, DateTime.utc_now())
    # IO.puts("Time till 2025: #{time_till}")
    days = div(time_till, 24 * 60 * 60)
    IO.puts("Days till 2025: #{days}")
  end
end
