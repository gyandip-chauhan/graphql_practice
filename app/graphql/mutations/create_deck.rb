module Mutations
  class CreateDeck < GraphQL::Schema::RelayClassicMutation
    field :deck, Types::DeckType, null: false

    argument :name, String, required: true
    argument :duelist_id, Integer, required: true

    def resolve(name:, duelist_id:)
      deck = Deck.create!(name: name, duelist_id: duelist_id)

      {
        deck: deck
      }
    end
  end
end
