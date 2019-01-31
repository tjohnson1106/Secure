defmodule Secure.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :password_hash, :string
    # virtual
    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :password_hash, :password_confirmation])
    |> validate_required([:email, :password_hash, :password_confirmation])
    |> validate_format([:email, ~r/@/])
    |> validate_length([:password, min: 8])
    |> validate_confirmation(:password)
    |> unique_constraint(:email)
  end
end
