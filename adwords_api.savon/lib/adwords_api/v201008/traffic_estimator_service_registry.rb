#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 12:00:33.

require 'adwords_api/errors'

module AdwordsApi; module V201008; module TrafficEstimatorService
  class TrafficEstimatorServiceRegistry
    TRAFFICESTIMATORSERVICE_METHODS = {:get=>{:output=>{:fields=>[{:type=>"TrafficEstimatorResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_response"}, :input=>[{:type=>"TrafficEstimatorSelector", :min_occurs=>0, :max_occurs=>1, :name=>:selector}]}}
    TRAFFICESTIMATORSERVICE_TYPES = {:EstimateRequest=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:estimate_request_type}], :abstract=>true}, :ProductConditionOperand=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:operand}], :ns=>0}, :MobilePlatformTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:platform_name}], :base=>"MobileTarget", :ns=>0}, :DoubleValue=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue", :ns=>0}, :AdGroupEstimate=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_id}, {:type=>"KeywordEstimate", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:keyword_estimates}], :base=>"Estimate"}, :Target=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:target_type}], :ns=>0, :abstract=>true}, :ProductCondition=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:argument}, {:type=>"ProductConditionOperand", :min_occurs=>0, :max_occurs=>1, :name=>:operand}], :ns=>0}, :Product=>{:fields=>[{:type=>"ProductCondition", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:conditions}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:text}], :base=>"Criterion", :ns=>0}, :NetworkTarget=>{:fields=>[{:type=>"NetworkCoverageType", :min_occurs=>0, :max_occurs=>1, :name=>:network_coverage_type}], :base=>"Target", :ns=>0}, :Money=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}], :base=>"ComparableValue", :ns=>0}, :GenderTarget=>{:fields=>[{:type=>"GenderTarget.Gender", :min_occurs=>0, :max_occurs=>1, :name=>:gender}], :base=>"DemographicTarget", :ns=>0}, :KeywordEstimate=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:criterion_id}, {:type=>"StatsEstimate", :min_occurs=>0, :max_occurs=>1, :name=>:min}, {:type=>"StatsEstimate", :min_occurs=>0, :max_occurs=>1, :name=>:max}], :base=>"Estimate"}, :MobileTarget=>{:fields=>[], :base=>"Target", :ns=>0, :abstract=>true}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError", :ns=>0}, :AdScheduleTarget=>{:fields=>[{:type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1, :name=>:day_of_week}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_hour}, {:type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1, :name=>:start_minute}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:end_hour}, {:type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1, :name=>:end_minute}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:bid_multiplier}], :base=>"Target", :ns=>0}, :AdGroupEstimateRequest=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_id}, {:type=>"KeywordEstimateRequest", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:keyword_estimate_requests}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:max_cpc}], :base=>"EstimateRequest"}, :NumberValue=>{:fields=>[], :base=>"ComparableValue", :ns=>0, :abstract=>true}, :GeoTarget=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:excluded}], :base=>"Target", :ns=>0, :abstract=>true}, :KeywordEstimateRequest=>{:fields=>[{:type=>"Keyword", :min_occurs=>0, :max_occurs=>1, :name=>:keyword}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:max_cpc}], :base=>"EstimateRequest"}, :PlatformTarget=>{:fields=>[{:type=>"PlatformType", :min_occurs=>0, :max_occurs=>1, :name=>:platform_type}], :base=>"Target", :ns=>0}, :GeoPoint=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:latitude_in_micro_degrees}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:longitude_in_micro_degrees}], :ns=>0}, :Criterion=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:criterion_type}], :ns=>0}, :AgeTarget=>{:fields=>[{:type=>"AgeTarget.Age", :min_occurs=>0, :max_occurs=>1, :name=>:age}], :base=>"DemographicTarget", :ns=>0}, :CampaignEstimate=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:campaign_id}, {:type=>"AdGroupEstimate", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:ad_group_estimates}], :base=>"Estimate"}, :CriterionUserInterest=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:user_interest_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_interest_name}], :base=>"Criterion", :ns=>0}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError", :ns=>0}, :LanguageTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:language_code}], :base=>"Target", :ns=>0}, :Address=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:street_address}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:street_address2}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:city_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:postal_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :ns=>0}, :StatsEstimate=>{:fields=>[{:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpc}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:average_position}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:clicks}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:total_cost}]}, :SoapHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:auth_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_customer_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_email}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:developer_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_agent}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:validate_only}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:partial_failure}], :ns=>0}, :PolygonTarget=>{:fields=>[{:type=>"GeoPoint", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:vertices}], :base=>"GeoTarget", :ns=>0}, :CityTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:city_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"GeoTarget", :ns=>0}, :CampaignEstimateRequest=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:campaign_id}, {:type=>"AdGroupEstimateRequest", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:ad_group_estimate_requests}, {:type=>"Target", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targets}], :base=>"EstimateRequest"}, :CriterionUserList=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:user_list_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_list_name}, {:type=>"CriterionUserList.MembershipStatus", :min_occurs=>0, :max_occurs=>1, :name=>:user_list_membership_status}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:user_list_size}], :base=>"Criterion", :ns=>0}, :MetroTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:metro_code}], :base=>"GeoTarget", :ns=>0}, :TrafficEstimatorResult=>{:fields=>[{:type=>"CampaignEstimate", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:campaign_estimates}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:operations}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:units}], :ns=>0}, :ProvinceTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_code}], :base=>"GeoTarget", :ns=>0}, :LongValue=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue", :ns=>0}, :Keyword=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:text}, {:type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1, :name=>:match_type}], :base=>"Criterion", :ns=>0}, :EntityAccessDenied=>{:fields=>[{:type=>"EntityAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError", :ns=>0}, :CountryTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"GeoTarget", :ns=>0}, :Estimate=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:estimate_type}]}, :Vertical=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:path}], :base=>"Criterion", :ns=>0}, :MobileCarrierTarget=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:carrier_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"MobileTarget", :ns=>0}, :TrafficEstimatorSelector=>{:fields=>[{:type=>"CampaignEstimateRequest", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:campaign_estimate_requests}]}, :ProximityTarget=>{:fields=>[{:type=>"GeoPoint", :min_occurs=>0, :max_occurs=>1, :name=>:geo_point}, {:type=>"ProximityTarget.DistanceUnits", :min_occurs=>0, :max_occurs=>1, :name=>:radius_distance_units}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:radius_in_units}, {:type=>"Address", :min_occurs=>0, :max_occurs=>1, :name=>:address}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:allow_service_of_address}], :base=>"GeoTarget", :ns=>0}, :Placement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:url}], :base=>"Criterion", :ns=>0}, :DemographicTarget=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:bid_modifier}], :base=>"Target", :ns=>0, :abstract=>true}, :ComparableValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:comparable_value_type}], :ns=>0, :abstract=>true}}
    TRAFFICESTIMATORSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201008"]

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
