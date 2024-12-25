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
    name = "Caleb"
    status = Enum.random([:gold, :silver, :bronze, :"not a member"])

    case status do
      :gold -> IO.puts "Hello #{name}, you are a gold member"
      :silver -> IO.puts "Hello #{name}, you are a silver member"
      :bronze -> IO.puts "Hello #{name}, you are a bronze member"
      :"not a member" -> IO.puts "Hello #{name}, you are not a member"
    end
  end

end
