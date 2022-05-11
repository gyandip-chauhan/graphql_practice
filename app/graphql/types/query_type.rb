module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # include GraphQL::Types::Relay::HasNodeField
    # include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    description "root query"

    field :duelists, [DuelistType], null: true do
      description "get all duelists"
    end

    field :duelist, DuelistType, null: true do
      description "find duelist by id"
      argument :id, ID, required: true
    end

    field :cards, [CardType], null: true do
      description "get all cards"
    end

    field :card, CardType, null: true do
      description "find card by id"
      argument :id, ID, required: true
    end

    field :decks, [DeckType], null: true do
      description "get all decks"
    end

    field :deck, DeckType, null: true do
      description "find deck by id"
      argument :id, ID, required: true
    end

    def duelists
      Duelist.all
    end

    def duelist(id:)
      Duelist.find(id)
    end

    def cards
      Card.all
    end

    def card(id:)
      Card.find(id)
    end

    def decks
      Deck.all
    end

    def deck(id:)
      Deck.find(id)
    end
  end
end
