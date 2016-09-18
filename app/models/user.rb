class User < ApplicationRecord
  has_secure_password

  def self.find_by(options)
    student_array = Unirest.get("api-link.blah/#{options[:id]}.json").body
  end
end
