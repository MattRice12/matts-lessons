class LessonsController < ApplicationController
  def show
    lesson = Lesson.find_by(view_tag: params.fetch(:view_tag))

    render locals: { lesson: lesson }
  end
end
