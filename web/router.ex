defmodule Toprater.Router do
  use Phoenix.Router

  get "/", Toprater.PageController, :index, as: :pages

end
