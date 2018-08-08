class LanguagesController < ApplicationController
  def index
    languages = Language.all

    render locals: { languages: languages }
  end

  def show
    language = Language.find_by(view_tag: params.fetch(:view_tag))

    render locals: { language: language }
  end
end
