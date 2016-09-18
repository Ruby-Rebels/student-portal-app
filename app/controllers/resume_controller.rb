class ResumeController < ApplicationController
  def edit
    Unirest.get("api-link/#{user.id}/resume").body
  end

  def update_education(params)
    Unirest.patch(
      "api-link/#{user.id}",
      headers: {
        "Accept" => "application/json"
      },
      parameters: {
        start_date: params[:start_date],
        end_date: params[:end_date],
        degree: params[:degree],
        university_name: params[:university_name],
        details: params[:details]
      }
    )
  end

  def update_capstone(params)
    Unirest.patch(
      "api-link/#{user.id}",
      headers: {
        "Accept" => "application/json"
      },
      parameters: {
        name: params[:name],
        description: params[:description],
        url: params[:url],
        screenshot: params[:screenshot]
      }
    )
  end

  def update_experience(params)
    Unirest.patch(
      "api-link/#{user.id}",
      headers: {
        "Accept" => "application/json"
      },
      parameters: {
        experience: params[:start_date],
        end_date: params[:end_date],
        job_title: params[:job_title],
        company_name: params[:company_name],
        details: params[:details]
      }
    )
  end

  def update_skill(params)
    Unirest.patch(
      "api-link/#{user.id}",
      headers: {
        "Accept" => "application/json"
      },
      parameters: {
        skill_name: params[:skill_name]
      }
    )
  end
end
