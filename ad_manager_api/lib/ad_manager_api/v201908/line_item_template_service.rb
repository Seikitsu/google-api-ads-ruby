# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2019, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.2 on 2019-08-09 18:02:22.

require 'ads_common/savon_service'
require 'ad_manager_api/v201908/line_item_template_service_registry'

module AdManagerApi; module V201908; module LineItemTemplateService
  class LineItemTemplateService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201908'
      super(config, endpoint, namespace, :v201908)
    end

    def get_line_item_templates_by_statement(*args, &block)
      return execute_action('get_line_item_templates_by_statement', args, &block)
    end

    def get_line_item_templates_by_statement_to_xml(*args)
      return get_soap_xml('get_line_item_templates_by_statement', args)
    end

    private

    def get_service_registry()
      return LineItemTemplateServiceRegistry
    end

    def get_module()
      return AdManagerApi::V201908::LineItemTemplateService
    end
  end
end; end; end
