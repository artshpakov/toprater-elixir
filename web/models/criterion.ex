defmodule Criterion do
  use RemoteModel
  
  def tree(lang \\ "ru") do
    {:ok, criteria} = fetch("criteria", [lang: lang, subcriteria: true])
    criteria["criteria"]
  end
  
end
