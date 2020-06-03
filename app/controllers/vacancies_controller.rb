class VacanciesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def insert
    Vacancy.create(vacancy_params)
    # Vacancy.create(status: '1', zone: 'teste', position: '4' )
  end

  private

  def vacancy_params
    params.permit(:status, :zone, :position)
  end
end
