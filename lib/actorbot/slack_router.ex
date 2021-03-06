defmodule Actorbot.SlackRouter do
  use Plug.Router

  plug Plug.Parsers, parsers: [:urlencoded]
  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "")
  end

  post "/" do
    send_resp(conn, 200, "Pong!")
  end

  match _ do
    send_resp(conn, 404, "")
  end
end
