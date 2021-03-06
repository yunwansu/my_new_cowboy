defmodule MyNewCowboy.Supervisor do
  use Supervisor

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args)
  end

  def init(args) do
    children = []
    Supervisor.init(children, strategy: :one_for_one)
  end
end
