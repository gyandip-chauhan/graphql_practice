module Mutations
  class CreateCard < GraphQL::Schema::RelayClassicMutation
    field :card, Types::CardType, null: false

    argument :name, String, required: true

    def resolve(name:)
      card = Card.create!(name: name)

      {
        card: card
      }
    end
  end
end
