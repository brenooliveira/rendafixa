defmodule RendaFixa.TaxasTest do
  use ExUnit.Case, async: true
  doctest RendaFixa.Taxas

  setup do
    {:ok, taxas} = RendaFixa.Taxas.start_link([])
    %{taxas: taxas}
  end

  test "armazena taxas por chave", %{taxas: taxas} do
    assert RendaFixa.Taxas.get(taxas, "ipca") == nil

    RendaFixa.Taxas.put(taxas, "selic", 6.75)
    assert RendaFixa.Taxas.get(taxas, "selic") == 6.75
  end
end
