class WatchItemsController < ApplicationController
    before_action :set_watch_item, only: [:show, :edit, :update, :destroy]

    def index
        @watch_items = WatchItem.all.order(:id)
    end

    def show
    end

    def new
        @watch_item = WatchItem.new
    end

    def create
        @watch_item = WatchItem.new(watch_item_params)

        if @watch_item.save
            redirect_to @watch_item
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @watch_item.update(watch_item_params)
            redirect_to @watch_item
        else
            render :edit
        end
    end

    def destroy
        @watch_item.destroy
        redirect_to watch_items_url
    end

    private

    def set_watch_item
        @watch_item = WatchItem.find(params[:id])
    end

    def watch_item_params
        params.require(:watch_item).permit(:title, :genre, :summary, :image)
      end

end
