class VacanciesController < ApplicationController
  # skip_before_filter :verify_authenticity_token

  def insert
    Vacancy.create(params)
  end

  private

  def params
    params.permit(:status, :zone, :position)
  end
end
