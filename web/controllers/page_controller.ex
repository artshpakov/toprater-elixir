defmodule Toprater.PageController do

  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index", tree: Criterion.tree(_params["lang"])
  end

end
