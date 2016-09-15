class CapstoneController < ApplicationController
  def edit
    Unirest.get("api-link/#{user.id}").body
  end

  def update(params)
    Unirest.patch(
      "api-link/#{user.id}",
      headers: {
        "Accept" => "application/json"
      },
      parameters: {
        
      }
    )
  end
end
