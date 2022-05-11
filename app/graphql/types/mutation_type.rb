module Types
  class MutationType < Types::BaseObject
    field :delete_duelist, mutation: Mutations::DeleteDuelist
    field :delete_deck, mutation: Mutations::DeleteDeck
    field :update_deck, mutation: Mutations::UpdateDeck
    field :create_deck, mutation: Mutations::CreateDeck
    field :delete_card, mutation: Mutations::DeleteCard
    field :update_card, mutation: Mutations::UpdateCard
    field :create_card, mutation: Mutations::CreateCard
    field :update_duelist, mutation: Mutations::UpdateDuelist
    field :create_duelist, mutation: Mutations::CreateDuelist
    
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
  end
end
