defmodule RendaFixa.RegistryTest do
  use ExUnit.Case, async: true

  setup do
    registry = start_supervised!(RendaFixa.Registry)
    %{registry: registry}
  end

  test "spawns taxas", %{registry: registry} do
    assert RendaFixa.Registry.lookup(registry, "CDI") == :error

    RendaFixa.Registry.create(registry, "CDI")
    assert {:ok, taxas} = RendaFixa.Registry.lookup(registry, "CDI")
  end
end
