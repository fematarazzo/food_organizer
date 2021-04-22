defmodule FoodOrganizer.Supplies.Scheduler do
  use GenServer

  alias FoodOrganizer.Supplies.ExpirationNotification

  def init(state \\ %{}) do
    schedule_notification()
    {:ok, state}
  end

  def handle_info(:generate, state) do
    ExpirationNotification.send()
    schedule_notification()
    {:noreply, state}
  end

  defp schedule_notification do
    Process.send_after(self(), :generate, 1000 * 10)
  end

  # # async
  # def handle_cast({:put, key, value}, state) do
  #   {:noreply, Map.put(state, key, value)}
  # end
  #
  # # sync
  # def handle_call({:get, key}, _from, state) do
  #   {:reply, Map.get(state, key), state}
  # end
end
