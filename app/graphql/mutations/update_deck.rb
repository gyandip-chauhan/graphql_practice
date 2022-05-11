module Mutations
  class UpdateDeck < GraphQL::Schema::RelayClassicMutation
    field :deck, Types::DeckType, null: false

    argument :id, ID, required: false
    argument :name, String, required: false
    argument :duelist_id, Integer, required: false

    def resolve(id:, name:, duelist_id:)
      deck = Deck.find(id)
      deck.update!(name: name, duelist_id: duelist_id)

      {
        deck: deck
      }
    end
  end
end
