defmodule IntroductionPhoenixLiveViewWeb.PageLive do
  use IntroductionPhoenixLiveViewWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(%{
        email: "",
        department: "",
        subject: "",
        message: ""
      })

    {:ok, socket}
  end

  @impl true
  def handle_event("submit", params, socket) do
    socket =
      socket
      |> assign(:email, params["email"])
      |> assign(:department, params["department"])
      |> assign(:subject, params["subject"])
      |> assign(:message, params["message"])
      {:noreply, socket}
  end
end
