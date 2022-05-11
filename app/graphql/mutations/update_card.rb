module Mutations
  class UpdateCard < GraphQL::Schema::RelayClassicMutation
    field :card, Types::CardType, null: false

    argument :id, ID, required: true
    argument :name, String, required: true

    def resolve(id:, name:)
      card = Card.find(id)
      card.update!(name: name)

      {
        card: card
      }
    end
  end
end
