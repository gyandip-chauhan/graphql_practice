module Mutations
  class DeleteDuelist < GraphQL::Schema::RelayClassicMutation
    field :duelist, Types::DuelistType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      duelist = Duelist.find(id)
      duelist.destroy!

      {
        duelist: duelist
      }
    end
  end
end
