defmodule Toprater.PageView do
  use Toprater.Views

  def criteria_list(lang \\ "ru") do
    Criterion.list lang
  end
  

end
