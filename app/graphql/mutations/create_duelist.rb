module Mutations
  class CreateDuelist < GraphQL::Schema::RelayClassicMutation
    field :duelist, Types::DuelistType, null: false
    argument :name, String, required: true
    argument :rank, Integer, required: false

    def resolve(name:, rank:)
      duelist = Duelist.create!(name: name, rank: rank)

      {
        duelist: duelist
      }
    end
  end
end
