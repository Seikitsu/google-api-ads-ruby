#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 12:00:45.

require 'adwords_api/errors'

module AdwordsApi; module V13; module TrafficEstimatorService
  class TrafficEstimatorServiceRegistry
    TRAFFICESTIMATORSERVICE_METHODS = {:estimate_ad_group_list=>{:output=>{:fields=>[{:type=>"AdGroupEstimate", :max_occurs=>:unbounded, :name=>:estimate_ad_group_list_return}], :name=>"estimate_ad_group_list_response"}, :input=>[{:type=>"AdGroupRequest", :max_occurs=>:unbounded, :name=>:ad_group_requests}]}, :estimate_campaign_list=>{:output=>{:fields=>[{:type=>"CampaignEstimate", :max_occurs=>:unbounded, :name=>:estimate_campaign_list_return}], :name=>"estimate_campaign_list_response"}, :input=>[{:type=>"CampaignRequest", :max_occurs=>:unbounded, :name=>:campaign_requests}]}, :estimate_keyword_list=>{:output=>{:fields=>[{:type=>"KeywordEstimate", :max_occurs=>:unbounded, :name=>:estimate_keyword_list_return}], :name=>"estimate_keyword_list_response"}, :input=>[{:type=>"KeywordRequest", :max_occurs=>:unbounded, :name=>:keyword_requests}]}, :check_keyword_traffic=>{:output=>{:fields=>[{:type=>"KeywordTraffic", :max_occurs=>:unbounded, :name=>:check_keyword_traffic_return}], :name=>"check_keyword_traffic_response"}, :input=>[{:type=>"KeywordTrafficRequest", :max_occurs=>:unbounded, :name=>:requests}]}}
    TRAFFICESTIMATORSERVICE_TYPES = {:Circle=>{:fields=>[{:type=>"int", :name=>:latitude_micro_degrees}, {:type=>"int", :name=>:longitude_micro_degrees}, {:type=>"int", :name=>:radius_meters}]}, :ProximityTargets=>{:fields=>[{:type=>"Circle", :max_occurs=>:unbounded, :name=>:circles}]}, :NetworkTarget=>{:fields=>[{:type=>"NetworkType", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:network_types}]}, :AdGroupEstimate=>{:fields=>[{:type=>"int", :min_occurs=>0, :name=>:id}, {:type=>"KeywordEstimate", :max_occurs=>:unbounded, :name=>:keyword_estimates}]}, :KeywordEstimate=>{:fields=>[{:type=>"long", :min_occurs=>0, :name=>:id}, {:type=>"float", :name=>:lower_avg_position}, {:type=>"float", :name=>:lower_clicks_per_day}, {:type=>"long", :name=>:lower_cpc}, {:type=>"float", :name=>:upper_avg_position}, {:type=>"float", :name=>:upper_clicks_per_day}, {:type=>"long", :name=>:upper_cpc}]}, :CityTargets=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:cities}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:excluded_cities}]}, :RegionTargets=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:excluded_regions}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:regions}]}, :GeoTarget=>{:fields=>[{:type=>"CityTargets", :min_occurs=>0, :name=>:city_targets}, {:type=>"CountryTargets", :min_occurs=>0, :name=>:country_targets}, {:type=>"MetroTargets", :min_occurs=>0, :name=>:metro_targets}, {:type=>"ProximityTargets", :min_occurs=>0, :name=>:proximity_targets}, {:type=>"RegionTargets", :min_occurs=>0, :name=>:region_targets}, {:type=>"boolean", :name=>:target_all}]}, :CountryTargets=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:countries}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:excluded_countries}]}, :LanguageTarget=>{:fields=>[{:type=>"string", :max_occurs=>:unbounded, :name=>:languages}]}, :CampaignEstimate=>{:fields=>[{:type=>"AdGroupEstimate", :max_occurs=>:unbounded, :name=>:ad_group_estimates}, {:type=>"int", :min_occurs=>0, :name=>:id}]}, :KeywordRequest=>{:fields=>[{:type=>"long", :min_occurs=>0, :name=>:id}, {:type=>"long", :min_occurs=>0, :name=>:max_cpc}, {:type=>"boolean", :min_occurs=>0, :name=>:negative}, {:type=>"string", :min_occurs=>0, :name=>:text}, {:type=>"KeywordType", :min_occurs=>0, :name=>:type}]}, :AdGroupRequest=>{:fields=>[{:type=>"long", :min_occurs=>0, :name=>:id}, {:type=>"KeywordRequest", :max_occurs=>:unbounded, :name=>:keyword_requests}, {:type=>"long", :min_occurs=>0, :name=>:max_cpc}]}, :KeywordTrafficRequest=>{:fields=>[{:type=>"string", :name=>:keyword_text}, {:type=>"KeywordType", :name=>:keyword_type}, {:type=>"string", :min_occurs=>0, :name=>:language}]}, :CampaignRequest=>{:fields=>[{:type=>"AdGroupRequest", :max_occurs=>:unbounded, :name=>:ad_group_requests}, {:type=>"GeoTarget", :min_occurs=>0, :name=>:geo_targeting}, {:type=>"int", :min_occurs=>0, :name=>:id}, {:type=>"LanguageTarget", :min_occurs=>0, :name=>:language_targeting}, {:type=>"NetworkTarget", :min_occurs=>0, :name=>:network_targeting}]}, :MetroTargets=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:excluded_metros}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:metros}]}}
    TRAFFICESTIMATORSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return TRAFFICESTIMATORSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return TRAFFICESTIMATORSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return TRAFFICESTIMATORSERVICE_NAMESPACES[index]
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
