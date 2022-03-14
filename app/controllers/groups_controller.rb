class GroupsController < ActionController::Base
    def index
        @groups = current_user.groups.all
    end

    def new
        @group = current_user.groups.new
    end

    def create
    end
end
