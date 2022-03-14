class EntitiesController < ActionController::Base
    def index
        @group = Group.find(params[:group_id])
        @relations = @group.relations 
    end

    def new
        @group = Group.find(params[:group_id])
        @entity = Entity.new
    end
end
  