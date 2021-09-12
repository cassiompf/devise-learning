class ItemsController < ApplicationController
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
