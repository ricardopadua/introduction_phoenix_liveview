defmodule IntroductionPhoenixLiveViewWeb.PageController do
  use IntroductionPhoenixLiveViewWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
