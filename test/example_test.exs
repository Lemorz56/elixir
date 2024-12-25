defmodule ExampleTest do
  use ExUnit.Case
  doctest Example

  test "greets the world" do
    assert Example.main() != nil
  end
end
