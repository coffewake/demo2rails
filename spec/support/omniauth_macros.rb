
module OmniauthMacros
  def mock_auth_hash
    # The mock_auth configuration allows you to set per-provider (or default)
    # authentication hashes to return during integration testing.
    OmniAuth.config.add_mock(:steam, {
      'provider' => 'steam',
      'uid' => '123545',
      'info' => {
        'nickname' => 'Killer Josh',
        'name' => 'mock_user_thumbnail_ur',
        'location' => 'ru'
                     },
      'extra' => {
        'raw_info'=>{
        'avatarfull' => nil,
        'profileurl' => 'mock_secret'
      }
      }
    })
  end
end
