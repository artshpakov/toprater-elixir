defmodule Toprater.Router do
  use Phoenix.Router

  get "/", Toprater.PageController, :index, as: :pages
  get "/:lang", Toprater.PageController, :index, as: :pages

end
