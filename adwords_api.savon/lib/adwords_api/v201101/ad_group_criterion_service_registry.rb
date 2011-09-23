#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 11:57:32.

require 'adwords_api/errors'

module AdwordsApi; module V201101; module AdGroupCriterionService
  class AdGroupCriterionServiceRegistry
    ADGROUPCRITERIONSERVICE_METHODS = {:mutate=>{:output=>{:fields=>[{:type=>"AdGroupCriterionReturnValue", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"mutate_response"}, :input=>[{:type=>"AdGroupCriterionOperation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:operations}]}, :get=>{:output=>{:fields=>[{:type=>"AdGroupCriterionPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_response"}, :input=>[{:type=>"Selector", :min_occurs=>0, :max_occurs=>1, :name=>:service_selector}]}}
    ADGROUPCRITERIONSERVICE_TYPES = {:ProductConditionOperand=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:operand}]}, :PercentCPAAdGroupCriterionBids=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:percent_cpa}, {:type=>"BidSource", :min_occurs=>0, :max_occurs=>1, :name=>:source}], :base=>"AdGroupCriterionBids"}, :DoubleValue=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue"}, :BiddableAdGroupCriterion=>{:fields=>[{:type=>"UserStatus", :min_occurs=>0, :max_occurs=>1, :name=>:user_status}, {:type=>"SystemServingStatus", :min_occurs=>0, :max_occurs=>1, :name=>:system_serving_status}, {:type=>"ApprovalStatus", :min_occurs=>0, :max_occurs=>1, :name=>:approval_status}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:destination_url}, {:type=>"AdGroupCriterionBids", :min_occurs=>0, :max_occurs=>1, :name=>:bids}, {:type=>"BiddableAdGroupCriterionExperimentData", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_data}, {:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:first_page_cpc}, {:type=>"QualityInfo", :min_occurs=>0, :max_occurs=>1, :name=>:quality_info}, {:type=>"Stats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}], :base=>"AdGroupCriterion"}, :ProductCondition=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:argument}, {:type=>"ProductConditionOperand", :min_occurs=>0, :max_occurs=>1, :name=>:operand}]}, :Product=>{:fields=>[{:type=>"ProductCondition", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:conditions}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:text}], :base=>"Criterion"}, :Predicate=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:field}, {:type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1, :name=>:operator}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :Money=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}], :base=>"ComparableValue"}, :ListReturnValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:list_return_value_type}], :abstract=>true}, :ExemptionRequest=>{:fields=>[{:type=>"PolicyViolationKey", :min_occurs=>0, :max_occurs=>1, :name=>:key}]}, :AdGroupCriterionOperation=>{:fields=>[{:type=>"AdGroupCriterion", :min_occurs=>0, :max_occurs=>1, :name=>:operand}, {:type=>"ExemptionRequest", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:exemption_requests}], :base=>"Operation"}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :BiddableAdGroupCriterionExperimentData=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_id}, {:type=>"ExperimentDeltaStatus", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_delta_status}, {:type=>"ExperimentDataStatus", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_data_status}, {:type=>"AdGroupCriterionExperimentBidMultiplier", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_bid_multiplier}]}, :Operation=>{:fields=>[{:type=>"Operator", :min_occurs=>0, :max_occurs=>1, :name=>:operator}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:operation_type}], :abstract=>true}, :NumberValue=>{:fields=>[], :base=>"ComparableValue", :abstract=>true}, :ManualCPCAdGroupCriterionBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:max_cpc}, {:type=>"BidSource", :min_occurs=>0, :max_occurs=>1, :name=>:bid_source}, {:type=>"PositionPreferenceAdGroupCriterionBids", :min_occurs=>0, :max_occurs=>1, :name=>:position_preference_bids}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:enhanced_cpc_enabled}], :base=>"AdGroupCriterionBids"}, :AdGroupCriterionPage=>{:fields=>[{:type=>"AdGroupCriterion", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:entries}], :base=>"Page"}, :PolicyViolationKey=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:policy_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:violating_text}]}, :Criterion=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:criterion_type}]}, :BudgetOptimizerAdGroupCriterionBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:proxy_bid}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:enhanced_cpc_enabled}], :base=>"AdGroupCriterionBids"}, :AdGroupCriterion=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_id}, {:type=>"CriterionUse", :min_occurs=>0, :max_occurs=>1, :name=>:criterion_use}, {:type=>"Criterion", :min_occurs=>0, :max_occurs=>1, :name=>:criterion}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_criterion_type}]}, :CriterionUserInterest=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:user_interest_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_interest_name}], :base=>"Criterion"}, :Page=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_num_entries}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:page_type}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :ManualCPCAdGroupCriterionExperimentBidMultiplier=>{:fields=>[{:type=>"BidMultiplier", :min_occurs=>0, :max_occurs=>1, :name=>:max_cpc_multiplier}, {:type=>"MultiplierSource", :min_occurs=>0, :max_occurs=>1, :name=>:multiplier_source}], :base=>"AdGroupCriterionExperimentBidMultiplier"}, :AdGroupCriterionReturnValue=>{:fields=>[{:type=>"AdGroupCriterion", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:value}, {:type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:partial_failure_errors}], :base=>"ListReturnValue"}, :SoapHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:auth_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_customer_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_email}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:developer_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_agent}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:validate_only}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:partial_failure}]}, :PositionPreferenceAdGroupCriterionBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:proxy_max_cpc}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:preferred_position}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:bottom_position}]}, :ConversionOptimizerAdGroupCriterionBids=>{:fields=>[], :base=>"AdGroupCriterionBids"}, :AdGroupCriterionBids=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_criterion_bids_type}], :abstract=>true}, :CriterionUserList=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:user_list_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_list_name}, {:type=>"CriterionUserList.MembershipStatus", :min_occurs=>0, :max_occurs=>1, :name=>:user_list_membership_status}], :base=>"Criterion"}, :Selector=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:fields}, {:type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:predicates}, {:type=>"DateRange", :min_occurs=>0, :max_occurs=>1, :name=>:date_range}, {:type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:ordering}, {:type=>"Paging", :min_occurs=>0, :max_occurs=>1, :name=>:paging}]}, :OrderBy=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:field}, {:type=>"SortOrder", :min_occurs=>0, :max_occurs=>1, :name=>:sort_order}]}, :ManualCPMAdGroupCriterionBids=>{:fields=>[{:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:max_cpm}, {:type=>"BidSource", :min_occurs=>0, :max_occurs=>1, :name=>:bid_source}], :base=>"AdGroupCriterionBids"}, :Bid=>{:fields=>[{:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:amount}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:operations}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:units}]}, :QualityInfo=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_keyword_ad_relevance_acceptable}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_landing_page_quality_acceptable}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_landing_page_latency_acceptable}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:quality_score}]}, :"PolicyViolationError.Part"=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:index}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:length}]}, :LongValue=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue"}, :Keyword=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:text}, {:type=>"KeywordMatchType", :min_occurs=>0, :max_occurs=>1, :name=>:match_type}], :base=>"Criterion"}, :EntityAccessDenied=>{:fields=>[{:type=>"EntityAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :AdGroupCriterionExperimentBidMultiplier=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_criterion_experiment_bid_multiplier_type}], :abstract=>true}, :Vertical=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:path}], :base=>"Criterion"}, :Stats=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:start_date}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:end_date}, {:type=>"Stats.Network", :min_occurs=>0, :max_occurs=>1, :name=>:network}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:clicks}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:impressions}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:average_position}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpc}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpm}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:ctr}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:conversions}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:conversion_rate}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_conversion}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:conversions_many_per_click}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:conversion_rate_many_per_click}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_conversion_many_per_click}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:view_through_conversions}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:total_conv_value}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:value_per_conv}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:value_per_conv_many_per_click}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:invalid_clicks}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:invalid_click_rate}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:stats_type}]}, :Paging=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:number_results}]}, :NegativeAdGroupCriterion=>{:fields=>[], :base=>"AdGroupCriterion"}, :DateRange=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:min}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:max}]}, :BidMultiplier=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:multiplier}, {:type=>"Bid", :min_occurs=>0, :max_occurs=>1, :name=>:multiplied_bid}]}, :Placement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:url}], :base=>"Criterion"}, :EntityCountLimitExceeded=>{:fields=>[{:type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:enclosing_id}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:limit}], :base=>"ApiError"}, :ComparableValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:comparable_value_type}], :abstract=>true}, :AdGroupCriterionLimitExceeded=>{:fields=>[{:type=>"AdGroupCriterionLimitExceeded.CriteriaLimitType", :min_occurs=>0, :max_occurs=>1, :name=>:limit_type}], :base=>"EntityCountLimitExceeded"}}
    ADGROUPCRITERIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADGROUPCRITERIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADGROUPCRITERIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADGROUPCRITERIONSERVICE_NAMESPACES[index]
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
