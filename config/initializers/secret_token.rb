# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#PasswordResetStudent::Application.config.secret_key_base = 'f98bf8b0a573af13d94a206cd559d08109220a4afa93f0ccb4a9249719cc9d2dc2d707dd5ca8e4f8158a32ac59cfdf50e4adaab614a352ef4b39058fa7c5eb65'

require 'securerandom'

def secure_token
    token_file=Rails.root.join('.secret')
    if File.exist?(token_file)
        File.read(token_file).chomp
        else
        token = SecureRandom.hex(64)
        File.write(token_file,token)
        token
    end
end

PasswordResetStudent::Application.config.secret_key_base = secure_token