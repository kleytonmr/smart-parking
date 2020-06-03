class VacanciesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def insert
    Vacancy.create(vacancy_params)
  end

  private

  def vacancy_params
    params.permit(:status, :zone, :position)
  end
end
