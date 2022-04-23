defmodule TeacherWeb.AlbumLive.Index do
  use TeacherWeb, :live_view

  alias Teacher.Recordings

  # @impl true
  # def mount(params, _session, socket) do
  #   page = Recordings.paginate_albums(params)
  #   {:ok, assign(socket, :page, page)}
  # end

  @impl true
  def handle_params(params, _uri, socket) do
    page = Recordings.paginate_albums(params)
    {:noreply, assign(socket, :page, page)}
  end

end
