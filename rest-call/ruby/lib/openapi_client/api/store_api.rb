=begin
#OpenAPI Petstore

#This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module OpenapiClient
  class StoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete purchase order by ID
    # For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
    # @param order_id [String] ID of the order that needs to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_order(order_id, opts = {})
      delete_order_with_http_info(order_id, opts)
      nil
    end

    # Delete purchase order by ID
    # For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
    # @param order_id [String] ID of the order that needs to be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_order_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoreApi.delete_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling StoreApi.delete_order"
      end
      # resource path
      local_var_path = '/store/order/{orderId}'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StoreApi.delete_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#delete_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns pet inventories by status
    # Returns a map of status codes to quantities
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, Integer>]
    def get_inventory(opts = {})
      data, _status_code, _headers = get_inventory_with_http_info(opts)
      data
    end

    # Returns pet inventories by status
    # Returns a map of status codes to quantities
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, Integer>, Integer, Hash)>] Hash<String, Integer> data, response status code and response headers
    def get_inventory_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoreApi.get_inventory ...'
      end
      # resource path
      local_var_path = '/store/inventory'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Hash<String, Integer>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"StoreApi.get_inventory",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_inventory\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find purchase order by ID
    # For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
    # @param order_id [Integer] ID of pet that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def get_order_by_id(order_id, opts = {})
      data, _status_code, _headers = get_order_by_id_with_http_info(order_id, opts)
      data
    end

    # Find purchase order by ID
    # For valid response try integer IDs with value &lt;&#x3D; 5 or &gt; 10. Other values will generated exceptions
    # @param order_id [Integer] ID of pet that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def get_order_by_id_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoreApi.get_order_by_id ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling StoreApi.get_order_by_id"
      end
      if @api_client.config.client_side_validation && order_id > 5
        fail ArgumentError, 'invalid value for "order_id" when calling StoreApi.get_order_by_id, must be smaller than or equal to 5.'
      end

      if @api_client.config.client_side_validation && order_id < 1
        fail ArgumentError, 'invalid value for "order_id" when calling StoreApi.get_order_by_id, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/store/order/{orderId}'.sub('{' + 'orderId' + '}', CGI.escape(order_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Order'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StoreApi.get_order_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_order_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Place an order for a pet
    # @param order [Order] order placed for purchasing the pet
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def place_order(order, opts = {})
      data, _status_code, _headers = place_order_with_http_info(order, opts)
      data
    end

    # Place an order for a pet
    # @param order [Order] order placed for purchasing the pet
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def place_order_with_http_info(order, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoreApi.place_order ...'
      end
      # verify the required parameter 'order' is set
      if @api_client.config.client_side_validation && order.nil?
        fail ArgumentError, "Missing the required parameter 'order' when calling StoreApi.place_order"
      end
      # resource path
      local_var_path = '/store/order'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(order)

      # return_type
      return_type = opts[:debug_return_type] || 'Order'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StoreApi.place_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#place_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
