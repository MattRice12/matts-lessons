class CategoriesController < ApplicationController
  def index
    categories = Category.all

    render locals: { categories: categories }
  end

  def show
    category = Category.find_by(view_tag: params.fetch(:view_tag))

    render locals: { category: category }
  end
end
