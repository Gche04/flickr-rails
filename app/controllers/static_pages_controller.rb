class StaticPagesController < ApplicationController

    require 'flickr'

    def index
        flickr = Flickr.new 

        id = params[:user_id]

        if id
            begin
                @photos = flickr.photos.search( user_id: id )
            rescue => exception
                flash[:alert] = " check user id and try again"
            end
        end
    end
end
