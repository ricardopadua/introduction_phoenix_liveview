defmodule IntroductionPhoenixLiveViewWeb.PageLive do
  use IntroductionPhoenixLiveViewWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(%{
        nome: "Ricardo",
        sobrenome: "Padua",
        idade: 80,
        numero_form: Enum.random(0..100),
        incidents: 1
      })

    {:ok, socket}
  end
end
