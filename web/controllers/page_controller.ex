defmodule Toprater.PageController do

  use Phoenix.Controller

  def index(conn, %{"lang" => lang}) do
    HTTPotion.start
    {:ok, params} = JSEX.encode([lang: lang || "ru", subcriteria: true])
    json = HTTPotion.get("http://5.9.141.34/api/v1/hotels/criteria?p=#{ params }").body
    {:ok, criteria} = JSEX.decode json
    render conn, "index", criteria: criteria["criteria"]
  end

end
