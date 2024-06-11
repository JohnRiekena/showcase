class AuthenticatedController < ApplicationController
  # Ensure User is Authenticated, or kick them back if not signed in
  before_action :authenticate_user!
  def index; end
end