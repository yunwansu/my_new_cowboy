defmodule MyNewCowboyTest do
  use ExUnit.Case
  doctest MyNewCowboy

  test "greets the world" do
    assert MyNewCowboy.hello() == :world
  end
end
