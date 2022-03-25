require "net/http"
require "uri"
require "json"

class YaleMenus

    @@API_ROOT = "https://yaledine.com/api/"

    def self.get(path, params: nil)
        uri = URI(@@API_ROOT + path)
        unless params.nil?
            uri.query = URI.encode_www_form(params)
        end

        res = Net::HTTP.get_response(uri)
        return JSON.parse(res.body)
    end

    def self.status()
        get("status")
    end

    def self.halls()
        get("halls")
    end

    def self.hall(hall_id)
        get("halls/#{hall_id}")
    end

    def self.hall_people(hall_id)
        get("halls/#{hall_id}/people")
    end

    def self.hall_meals(hall_id, date: nil, start_date: nil, end_date: nil)
        params = {}
        unless date.nil?
            params[:date] = date
        end
        unless start_date.nil?
            params[:start_date] = start_date
        end
        unless end_date.nil?
            params[:end_date] = end_date
        end
        get("halls/#{hall_id}/meals", params)
    end

    def self.meal(meal_id)
        get("meals/#{meal_id}")
    end

    def self.meal_items(meal_id)
        get("meals/#{meal_id}/items")
    end

    def self.item(item_id)
        get("items/#{item_id}")
    end

    def self.item_nutrition(item_id)
        get("items/#{item_id}/nutrition")
    end

    def self.item_reviews(item_id)
        get("items/#{item_id}/reviews")
    end

    def self.item_photos(item_id)
        get("items/#{item_id}/photos")
    end

    def self.butteries
        get("butteries")
    end

    def self.buttery(buttery_id)
        get("butteries/#{buttery_id}")
    end

    def self.buttery_items(buttery_id)
        get("butteries/#{buttery_id}/items")
    end
end
