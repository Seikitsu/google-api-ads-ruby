#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 12:00:43.

require 'ads_common/savon_service'
require 'adwords_api/v13/report_service_registry'
require 'adwords_api/extensions'

module AdwordsApi; module V13; module ReportService
  class ReportService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/v13'
      super(api, endpoint, namespace, :v13)
    end

    def validate_report_job(*args)
      return execute_action('validate_report_job', args)
    end

    def get_report_job_status(*args)
      return execute_action('get_report_job_status', args)
    end

    def delete_report(*args)
      return execute_action('delete_report', args)
    end

    def get_all_jobs(*args)
      return execute_action('get_all_jobs', args)
    end

    def get_report_download_url(*args)
      return execute_action('get_report_download_url', args)
    end

    def get_gzip_report_download_url(*args)
      return execute_action('get_gzip_report_download_url', args)
    end

    def schedule_report_job(*args)
      return execute_action('schedule_report_job', args)
    end

    def download_xml_report(*args)
      return AdwordsApi::Extensions.download_xml_report(self, args)
    end

    def download_csv_report(*args)
      return AdwordsApi::Extensions.download_csv_report(self, args)
    end

    private

    def get_service_registry()
      return ReportServiceRegistry
    end

    def get_module()
      return AdwordsApi::V13::ReportService
    end
  end
end; end; end
