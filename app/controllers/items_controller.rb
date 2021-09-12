class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    items = Item.all
    render items, status: :ok
  end

  def show
  end

  def create
  end

  def destroy
  end
end
