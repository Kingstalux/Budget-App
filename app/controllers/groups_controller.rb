class GroupsController < ActionController::Base
    def index
        @user = current_user
        @groups = @user.groups.all
    end
end
