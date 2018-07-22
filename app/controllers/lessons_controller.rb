class LessonsController < ApplicationController
  def index
    lessons = Lesson.where(category_id: params.fetch(:category_id))

    render locals: { lessons: lessons }
  end

  def show
    lesson = Lesson.find_by(view_tag: params.fetch(:view_tag))

    render locals: { lesson: lesson }
  end
end
