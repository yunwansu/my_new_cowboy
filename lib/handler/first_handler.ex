defmodule Handler.FirstHandler do
  def init(req, state) do
    {:cowboy_rest, req, state}
  end

  def content_types_provided(req, state) do
    {[{"text/html", :custom_callback}], req, state}
  end

  def custom_callback(req, state) do
    req = :cowboy_req.reply(200, %{}, "Hello cowboy", req)

    {:stop, req, state}
  end
end
