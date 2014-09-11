defmodule Toprater.Router do
  use Phoenix.Router

  scope alias: Toprater do
    get "/", PageController, :index
    get "/:lang", PageController, :index
  end

end
