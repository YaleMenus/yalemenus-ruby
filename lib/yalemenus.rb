require "net/http"
require "uri"
require "json"
require "date"

class YaleMenus

    @@API_ROOT = "https://api.yalemenus.com/"

    class << self

      def get(path, params = nil)
          uri = URI(@@API_ROOT + path)
          unless params.nil?
              uri.query = URI.encode_www_form(params)
          end

          res = Net::HTTP.get_response(uri)
          return JSON.parse(res.body)
      end

      def format_date(date)
          if date.is_a? Date
            return date.strftime('%Y-%m-%d')
          end
          return date
      end

      def status()
          get("status")
      end

      def halls()
          get("halls")
      end

      def hall(hall_id)
          get("halls/#{hall_id}")
      end

      def hall_people(hall_id)
          get("halls/#{hall_id}/people")
      end

      def hall_meals(hall_id, date: nil, start_date: nil, end_date: nil)
          params = {}
          unless date.nil?
              params[:date] = format_date(date)
          end
          unless start_date.nil?
              params[:start_date] = format_date(start_date)
          end
          unless end_date.nil?
              params[:end_date] = format_date(end_date)
          end
          get("halls/#{hall_id}/meals", params)
      end

      def meal(meal_id)
          get("meals/#{meal_id}")
      end

      def meal_items(meal_id)
          get("meals/#{meal_id}/items")
      end

      def item(item_id)
          get("items/#{item_id}")
      end

      def item_nutrition(item_id)
          get("items/#{item_id}/nutrition")
      end

      def item_reviews(item_id)
          get("items/#{item_id}/reviews")
      end

      def item_photos(item_id)
          get("items/#{item_id}/photos")
      end

      def butteries
          get("butteries")
      end

      def buttery(buttery_id)
          get("butteries/#{buttery_id}")
      end

      def buttery_items(buttery_id)
          get("butteries/#{buttery_id}/items")
      end

    end
end
