class CoursesController < ApplicationController
  before_action :current_user
   def index
    @courses = Course.all
  end

  def require_authorized_for_current_lesson
    if current_lesson.section.course != current_user
      redirect_to root_url, alert: 'You do not have access to this page'
    end
  end

   def show
    @course = Course.find(params[:id])
  end
end
