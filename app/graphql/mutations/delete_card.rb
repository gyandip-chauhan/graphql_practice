module Mutations
  class DeleteCard < GraphQL::Schema::RelayClassicMutation
    field :card, Types::CardType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      card = Card.find(id)
      card.destroy!

      {
        card: card
      }
    end
  end
end
