class ApplicationController < ActionController::Base
	def after_destroy_user_session_path(resource_or_scope)
	    if resource_or_scope == :user
	      new_user_session_path
	    end
	  end
end
