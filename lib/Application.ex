defmodule MyNewCowboy.Application do
  use Application

  def start(start_type, start_args) do
    dispatch = :cowboy_router.compile([
                          {:_, [
                            {"/", Handler.FirstHandler, []}
                            ]}])
          :cowboy.start_clear(:my_new_listener,
                              [{:port, 8080}],
                              %{:env => %{:dispatch => dispatch}}
                              )
          MyNewCowboy.Supervisor.start_link([])
  end
end
