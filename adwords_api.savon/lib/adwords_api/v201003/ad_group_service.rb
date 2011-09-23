#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 12:00:59.

require 'ads_common/savon_service'
require 'adwords_api/v201003/ad_group_service_registry'

module AdwordsApi; module V201003; module AdGroupService
  class AdGroupService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201003'
      super(api, endpoint, namespace, :v201003)
    end

    def mutate(*args)
      return execute_action('mutate', args)
    end

    def get(*args)
      return execute_action('get', args)
    end

    private

    def get_service_registry()
      return AdGroupServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201003::AdGroupService
    end
  end
end; end; end
