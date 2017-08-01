defmodule Catalog do
  @moduledoc """
    Provides a set of functions for querying the product inventory.
  """

  @doc """
    Returns a list of available products.
  """

  def list_products do
    alias NimbleCSV.RFC4180, as: CSV

    "priv/product_list.csv"
    |> File.read!
    |> CSV.parse_string
    |> Enum.map(fn [id,name,price] ->
        %Product{id: id, name: name, price: price}
    end)
  end

  def random_product(list) when is_list(list) do
    list
    |> Enum.random()
  end

  def random_product(_) do
    {:error, "Not a list"}
  end

  def random_product() do
    {:error, "Need a list of products as argument"}
  end
end
