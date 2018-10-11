class ApplicationController < ActionController::API

  private
  def hmac_secret
    'mhy$ecretK3y'
  end

  def encode(payload)
    JWT.encode(payload, hmac_secret, 'HS256')
  end

  def decode(encrypted_token)
    decrypted = JWT.decode(encrypted_token, hmac_secret, true, {algorithm: 'HS256'})
    decrypted[0]
  end
end
