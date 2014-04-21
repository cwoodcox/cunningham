module Cunningham
  class APIResource
    module ClassMethods
      def self.extended mod
        class << mod
          alias_method :retrieve_without_cache, :retrieve
          alias_method :retrieve, :retrieve_with_cache
        end
      end

      def retrieve_with_cache id, api_key = nil
        cached_record = Cunningham.lookup_object id
        if cached_record.nil?
          record = retrieve_without_cache id, api_key
          Cunningham.store_object record
        else
          construct_from cached_record
        end
      end
    end
  end
end
