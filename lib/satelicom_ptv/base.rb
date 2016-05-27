module SatelicomPtv
  class Base
    attr_accessor :profile, :coord_format

    def endpoint
      SatelicomPtv.config.send("#{parent_module_name.downcase}_endpoint")
    end

    def uri
      "#{endpoint}/#{ptv_path}/#{ptv_function}"
    end

    def ptv_path
      raise "Not implemented PTV path in #{demodulized_name}"
    end

    def ptv_function
      raise "Not implemented PTV function in #{demodulized_name}"
    end

    def parent_module_name
      name = self.class.name.split('::')[-2]
      return nil unless name
      underscore(name)
    end

    def demodulized_name
      demodulize(self.class.name)
    end

    # Avoid active support import
    def demodulize(path)
      path = path.to_s
      if i = path.rindex('::')
        path[(i+2)..-1]
      else
        path
      end
    end

    def underscore(path)
      path.gsub!(/([A-Z\d]+)([A-Z][a-z])/,'\1_\2').downcase
    end

    def post(params)
      params.merge!(default_params)
      #p params.to_json
      response = connection.post do |req|
        req.url "#{ptv_path}/#{ptv_function}"
        req.headers['Content-Type'] = 'application/json; charset=utf-8'
        req.body = Oj.dump(params)
      end
      body = Oj.load(response.body)
      (200..300).include?(response.status) ? body : raise(BadResponse.new(response.body))
    end

    def connection
      Faraday.new(url: endpoint) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        #faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
    end
    
    def default_params
      {
        callerContext: {
          properties: [
            {
              key: 'Profile',
              value: 'car'
            },
            {
              key: 'CoordFormat',
              value: coord_format || :PTV_GEODECIMAL
            }
          ]
        }
      }
    end
  end
end