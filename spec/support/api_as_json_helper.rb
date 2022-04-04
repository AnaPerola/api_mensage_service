# frozen_string_literal: true

module ApiAsJsonHelper
  def json_parse
    JSON.parse(response.body)
  end

  def user_as_json(user)
    {
      'name' => user.name,
      'email' => user.email,
      'password' => user.password
    }
  end
end
