# frozen_string_literal: true

module Types
  class DuelistType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :rank, Integer, null: false
    field :cards, [CardType], null: true
    field :decks, [DeckType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
