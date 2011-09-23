#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 12:01:29.

require 'adwords_api/errors'

module AdwordsApi; module V201003; module InfoService
  class InfoServiceRegistry
    INFOSERVICE_METHODS = {:get=>{:output=>{:fields=>[{:type=>"ApiUsageInfo", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_response"}, :input=>[{:type=>"InfoSelector", :min_occurs=>0, :max_occurs=>1, :name=>:selector}]}}
    INFOSERVICE_TYPES = {:ApiUsageInfo=>{:fields=>[{:type=>"ApiUsageRecord", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:api_usage_records}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:cost}]}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError", :ns=>0}, :SoapHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:auth_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_customer_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_email}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:developer_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_agent}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:validate_only}], :ns=>0}, :ApiUsageRecord=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_email}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:cost}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:operations}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:units}], :ns=>0}, :InfoSelector=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:service_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:method_name}, {:type=>"Operator", :min_occurs=>0, :max_occurs=>1, :name=>:operator}, {:type=>"DateRange", :min_occurs=>0, :max_occurs=>1, :name=>:date_range}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:client_emails}, {:type=>"ApiUsageType", :min_occurs=>0, :max_occurs=>1, :name=>:api_usage_type}]}, :DateRange=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:min}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:max}], :ns=>0}}
    INFOSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201003"]

    def self.get_method_signature(method_name)
      return INFOSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return INFOSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return INFOSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
