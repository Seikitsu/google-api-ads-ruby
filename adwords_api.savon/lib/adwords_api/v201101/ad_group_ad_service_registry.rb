#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 11:58:07.

require 'adwords_api/errors'

module AdwordsApi; module V201101; module AdGroupAdService
  class AdGroupAdServiceRegistry
    ADGROUPADSERVICE_METHODS = {:mutate=>{:output=>{:fields=>[{:type=>"AdGroupAdReturnValue", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"mutate_response"}, :input=>[{:type=>"AdGroupAdOperation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:operations}]}, :get=>{:output=>{:fields=>[{:type=>"AdGroupAdPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_response"}, :input=>[{:type=>"Selector", :min_occurs=>0, :max_occurs=>1, :name=>:service_selector}]}}
    ADGROUPADSERVICE_TYPES = {:TemplateElementField=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"TemplateElementField.Type", :min_occurs=>0, :max_occurs=>1, :name=>:type}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:field_text}, {:type=>"Media", :min_occurs=>0, :max_occurs=>1, :name=>:field_media}]}, :MobileAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:headline}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description}, {:type=>"MarkupLanguageType", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:markup_languages}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:mobile_carriers}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:business_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:phone_number}], :base=>"Ad"}, :DoubleValue=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue"}, :ListReturnValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:list_return_value_type}], :abstract=>true}, :AdGroupAdOperation=>{:fields=>[{:type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>1, :name=>:operand}, {:type=>"ExemptionRequest", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:exemption_requests}], :base=>"Operation"}, :ExemptionRequest=>{:fields=>[{:type=>"PolicyViolationKey", :min_occurs=>0, :max_occurs=>1, :name=>:key}]}, :AdGroupAdExperimentData=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_id}, {:type=>"ExperimentDeltaStatus", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_delta_status}, {:type=>"ExperimentDataStatus", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_data_status}]}, :Predicate=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:field}, {:type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1, :name=>:operator}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :Money=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}], :base=>"ComparableValue"}, :DeprecatedAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"DeprecatedAd.Type", :min_occurs=>0, :max_occurs=>1, :name=>:type}], :base=>"Ad"}, :ImageAd=>{:fields=>[{:type=>"Image", :min_occurs=>0, :max_occurs=>1, :name=>:image}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_to_copy_image_from}], :base=>"Ad"}, :ProductAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:promotion_line}], :base=>"Ad"}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :Operation=>{:fields=>[{:type=>"Operator", :min_occurs=>0, :max_occurs=>1, :name=>:operator}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:operation_type}], :abstract=>true}, :AdGroupAdPage=>{:fields=>[{:type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:entries}], :base=>"Page"}, :AdUnionId=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_union_id_type}]}, :NumberValue=>{:fields=>[], :base=>"ComparableValue", :abstract=>true}, :Dimensions=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:width}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:height}]}, :TemplateElement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:unique_name}, {:type=>"TemplateElementField", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:fields}]}, :TempAdUnionId=>{:fields=>[], :base=>"AdUnionId"}, :PolicyViolationKey=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:policy_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:violating_text}]}, :AdExtensionOverrideStats=>{:fields=>[], :base=>"Stats"}, :Page=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_num_entries}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:page_type}], :abstract=>true}, :AdGroupAdReturnValue=>{:fields=>[{:type=>"AdGroupAd", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:value}], :base=>"ListReturnValue"}, :RichMediaAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"Dimensions", :min_occurs=>0, :max_occurs=>1, :name=>:dimensions}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:snippet}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:impression_beacon_url}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:certified_vendor_format_id}], :base=>"Ad", :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :Image=>{:fields=>[{:type=>"base64Binary", :min_occurs=>0, :max_occurs=>1, :name=>:data}], :base=>"Media"}, :TemplateAd=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:template_id}, {:type=>"AdUnionId", :min_occurs=>0, :max_occurs=>1, :name=>:ad_union_id}, {:type=>"TemplateElement", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:template_elements}, {:type=>"Dimensions", :min_occurs=>0, :max_occurs=>1, :name=>:dimensions}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:duration}], :base=>"Ad"}, :TextAd=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:headline}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description1}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description2}], :base=>"Ad"}, :SoapHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:auth_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_customer_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_email}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:developer_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_agent}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:validate_only}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:partial_failure}]}, :AdGroupAdCountLimitExceeded=>{:fields=>[], :base=>"EntityCountLimitExceeded"}, :Media=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:media_id}, {:type=>"Media.MediaType", :min_occurs=>0, :max_occurs=>1, :name=>:type}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:reference_id}, {:type=>"Media_Size_DimensionsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:dimensions}, {:type=>"Media_Size_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:urls}, {:type=>"Media.MimeType", :min_occurs=>0, :max_occurs=>1, :name=>:mime_type}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:source_url}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:file_size}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:creation_time}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:media_type}]}, :Selector=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:fields}, {:type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:predicates}, {:type=>"DateRange", :min_occurs=>0, :max_occurs=>1, :name=>:date_range}, {:type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:ordering}, {:type=>"Paging", :min_occurs=>0, :max_occurs=>1, :name=>:paging}]}, :OrderBy=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:field}, {:type=>"SortOrder", :min_occurs=>0, :max_occurs=>1, :name=>:sort_order}]}, :Media_Size_DimensionsMapEntry=>{:fields=>[{:type=>"Media.Size", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Dimensions", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :Ad=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:url}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:display_url}, {:type=>"Ad.ApprovalStatus", :min_occurs=>0, :max_occurs=>1, :name=>:approval_status}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:disapproval_reasons}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:trademark_disapproved}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_type}]}, :ThirdPartyRedirectAd=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_cookie_targeted}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_user_interest_targeted}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_tagged}, {:type=>"VideoType", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:video_types}], :base=>"RichMediaAd"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:operations}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:units}]}, :"PolicyViolationError.Part"=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:index}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:length}]}, :LongValue=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue"}, :AdStats=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:percent_served}], :base=>"Stats"}, :MobileImageAd=>{:fields=>[{:type=>"MarkupLanguageType", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:markup_languages}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:mobile_carriers}, {:type=>"Image", :min_occurs=>0, :max_occurs=>1, :name=>:image}], :base=>"Ad"}, :Stats=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:start_date}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:end_date}, {:type=>"Stats.Network", :min_occurs=>0, :max_occurs=>1, :name=>:network}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:clicks}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:impressions}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:average_position}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpc}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpm}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:ctr}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:conversions}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:conversion_rate}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_conversion}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:conversions_many_per_click}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:conversion_rate_many_per_click}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_conversion_many_per_click}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:view_through_conversions}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:total_conv_value}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:value_per_conv}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:value_per_conv_many_per_click}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:invalid_clicks}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:invalid_click_rate}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:stats_type}]}, :Paging=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:number_results}]}, :Media_Size_StringMapEntry=>{:fields=>[{:type=>"Media.Size", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :DateRange=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:min}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:max}]}, :AdGroupAd=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_group_id}, {:type=>"Ad", :min_occurs=>0, :max_occurs=>1, :name=>:ad}, {:type=>"AdGroupAdExperimentData", :min_occurs=>0, :max_occurs=>1, :name=>:experiment_data}, {:type=>"AdGroupAd.Status", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"AdStats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}]}, :ComparableValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:comparable_value_type}], :abstract=>true}, :Video=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:duration_millis}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:streaming_url}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:ready_to_play_on_the_web}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:industry_standard_commercial_identifier}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:advertising_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:you_tube_video_id_string}], :base=>"Media"}, :EntityCountLimitExceeded=>{:fields=>[{:type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:enclosing_id}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:limit}], :base=>"ApiError"}, :Audio=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:duration_millis}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:streaming_url}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:ready_to_play_on_the_web}], :base=>"Media"}}
    ADGROUPADSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADGROUPADSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADGROUPADSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADGROUPADSERVICE_NAMESPACES[index]
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
