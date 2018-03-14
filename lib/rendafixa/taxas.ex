defmodule RendaFixa.Taxas do
  use Agent

  @doc """
  Starts a new bucket.
  """
  def start_link(_opts) do
    Agent.start_link(fn -> %{} end)
  end

  def get(taxas, key) do
    Agent.get(taxas, &Map.get(&1, key))
  end

  def put(taxas, key, value) do
    Agent.update(taxas, &Map.put(&1, key, value))
  end
end
