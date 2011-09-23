#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 11:59:57.

require 'ads_common/savon_service'
require 'adwords_api/v201008/report_definition_service_registry'
require 'adwords_api/extensions'

module AdwordsApi; module V201008; module ReportDefinitionService
  class ReportDefinitionService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201008'
      super(api, endpoint, namespace, :v201008)
    end

    def get_report_fields(*args)
      return execute_action('get_report_fields', args)
    end

    def mutate(*args)
      return execute_action('mutate', args)
    end

    def get(*args)
      return execute_action('get', args)
    end

    def download_report(*args)
      return AdwordsApi::Extensions.download_report(self, args)
    end

    def download_report_as_file(*args)
      return AdwordsApi::Extensions.download_report_as_file(self, args)
    end

    private

    def get_service_registry()
      return ReportDefinitionServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201008::ReportDefinitionService
    end
  end
end; end; end
