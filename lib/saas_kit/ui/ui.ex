defmodule SaasKit.UI do
  defmacro __using__(_opts) do
    quote do
      alias SaasKit.UI
      # import SaasKit.UI.Card
      # import SaasKit.UI.Modal
      # import SaasKit.UI.Table
    end
  end

  use Phoenix.Component

  def set_id do
    rand = :crypto.strong_rand_bytes(8)

    hash =
      :crypto.hash(:md5, rand)
      |> Base.encode16(case: :lower)

    "x#{hash}"
  end
end
