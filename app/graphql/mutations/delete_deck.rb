module Mutations
  class DeleteDeck < GraphQL::Schema::RelayClassicMutation
    field :deck, Types::DeckType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      deck = Deck.find(id)
      deck.destroy!
      
      {
        deck: deck
      }
    end
  end
end
