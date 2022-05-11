module Mutations
  class UpdateDuelist < GraphQL::Schema::RelayClassicMutation
    field :duelist, Types::DuelistType, null: false

    argument :id, ID, required: true
    argument :name, String, required: true
    argument :rank, Integer, required: false

    def resolve(id:, name:, rank:)
      duelist = Duelist.find(id)
      duelist.update!(name: name, rank: rank)

      {
        duelist: duelist
      }
    end
  end
end
