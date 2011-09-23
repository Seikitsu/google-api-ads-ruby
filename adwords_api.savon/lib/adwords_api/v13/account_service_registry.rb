#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 12:00:47.

require 'adwords_api/errors'

module AdwordsApi; module V13; module AccountService
  class AccountServiceRegistry
    ACCOUNTSERVICE_METHODS = {:update_account_info=>{:output=>{:fields=>[], :name=>"update_account_info_response"}, :input=>[{:type=>"AccountInfo", :name=>:account_info}]}, :get_account_info=>{:output=>{:fields=>[{:type=>"AccountInfo", :name=>:get_account_info_return}], :name=>"get_account_info_response"}, :input=>[]}, :get_client_account_infos=>{:output=>{:fields=>[{:type=>"ClientAccountInfo", :max_occurs=>:unbounded, :name=>:get_client_account_infos_return}], :name=>"get_client_account_infos_response"}, :input=>[]}, :get_client_accounts=>{:output=>{:fields=>[{:type=>"string", :max_occurs=>:unbounded, :name=>:get_client_accounts_return}], :name=>"get_client_accounts_response"}, :input=>[]}, :get_mcc_alerts=>{:output=>{:fields=>[{:type=>"MccAlert", :max_occurs=>:unbounded, :name=>:get_mcc_alerts_return}], :name=>"get_mcc_alerts_response"}, :input=>[]}}
    ACCOUNTSERVICE_TYPES = {:NetworkTarget=>{:fields=>[{:type=>"NetworkType", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:network_types}]}, :AccountInfo=>{:fields=>[{:type=>"Address", :name=>:billing_address}, {:type=>"string", :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :name=>:customer_id}, {:type=>"NetworkTarget", :name=>:default_network_targeting}, {:type=>"string", :name=>:descriptive_name}, {:type=>"EmailPromotionsPreferences", :name=>:email_promotions_preferences}, {:type=>"string", :name=>:language_preference}, {:type=>"Address", :name=>:primary_address}, {:type=>"string", :name=>:primary_business_category}, {:type=>"long", :min_occurs=>0, :name=>:time_zone_effective_date}, {:type=>"string", :name=>:time_zone_id}]}, :ClientAccountInfo=>{:fields=>[{:type=>"string", :name=>:email_address}, {:type=>"boolean", :name=>:is_customer_manager}]}, :EmailPromotionsPreferences=>{:fields=>[{:type=>"boolean", :name=>:account_performance_enabled}, {:type=>"boolean", :name=>:disapproved_ads_enabled}, {:type=>"boolean", :name=>:market_research_enabled}, {:type=>"boolean", :name=>:newsletter_enabled}, {:type=>"boolean", :name=>:promotions_enabled}]}, :Address=>{:fields=>[{:type=>"string", :name=>:address_line1}, {:type=>"string", :name=>:address_line2}, {:type=>"string", :name=>:city}, {:type=>"string", :name=>:company_name}, {:type=>"string", :name=>:country_code}, {:type=>"string", :name=>:email_address}, {:type=>"string", :name=>:fax_number}, {:type=>"string", :name=>:name}, {:type=>"string", :name=>:phone_number}, {:type=>"string", :name=>:postal_code}, {:type=>"string", :name=>:state}]}, :MccAlert=>{:fields=>[{:type=>"string", :name=>:client_company_name}, {:type=>"long", :name=>:client_customer_id}, {:type=>"string", :name=>:client_login}, {:type=>"string", :name=>:client_name}, {:type=>"MccAlertPriority", :name=>:priority}, {:type=>"dateTime", :name=>:trigger_time}, {:type=>"MccAlertType", :name=>:type}]}}
    ACCOUNTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ACCOUNTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ACCOUNTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ACCOUNTSERVICE_NAMESPACES[index]
    end
  end

  class ApiException < AdwordsApi::Errors::ApiException
    attr_reader :code  # int
    attr_reader :errors  # ApiError
    attr_reader :internal  # boolean
    attr_reader :message  # string
    attr_reader :trigger  # string
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
