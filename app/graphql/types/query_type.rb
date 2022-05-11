module Types
  class QueryType < Types::BaseObject
    description "root query"

    field :duelists, [DuelistType], null: true do
      description "gets all duelists"
    end
    
    def duelists
      Duelist.all
    end
  end
  # class QueryType < Types::BaseObject
  #   # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
  #   include GraphQL::Types::Relay::HasNodeField
  #   include GraphQL::Types::Relay::HasNodesField

  #   # Add root-level fields here.
  #   # They will be entry points for queries on your schema.

  #   # TODO: remove me
  #   field :test_field, String, null: false,
  #     description: "An example field added by the generator"
  #   def test_field
  #     "Hello World!"
  #   end
  # end
end
