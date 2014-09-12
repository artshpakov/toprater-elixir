defmodule Criterion do
  use RemoteModel
  defstruct name: nil, label: nil
  
  def tree(lang \\ "ru") do
    {:ok, criteria} = fetch("criteria", [lang: lang, subcriteria: true])
    criteria["criteria"]
  end

  def list(lang \\ "ru") do
    Enum.flat_map tree(lang), fn(root) ->
      Enum.map root["subcriteria"], fn(sub) ->
        %Criterion{name: sub["name"], label: sub["label"]}
      end
    end
  end
  
  
end
