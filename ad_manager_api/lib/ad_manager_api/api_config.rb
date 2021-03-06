# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# Helper methods for loading and managing the available services in the DFP API.

require 'ads_common/api_config'

require 'ad_manager_api/version'

module AdManagerApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    class << ApiConfig
      include AdsCommon::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :v201911
    LATEST_VERSION = :v201911

    # Set other constants
    API_NAME = 'AdManagerApi'
    DEFAULT_CONFIG_FILENAME = 'ad_manager_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v201902 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdjustmentService, :AdRuleService,
                   :AudienceSegmentService, :BaseRateService, :CompanyService,
                   :CdnConfigurationService, :CmsMetadataService,
                   :ContactService, :ContentBundleService, :ContentService,
                   :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :DaiAuthenticationKeyService, :ExchangeRateService,
                   :ForecastService, :InventoryService, :LabelService,
                   :LineItemCreativeAssociationService, :LineItemService,
                   :LineItemTemplateService, :LiveStreamEventService,
                   :MobileApplicationService, :NativeStyleService,
                   :NetworkService, :OrderService, :PackageService,
                   :ProductPackageService, :ProductPackageItemService,
                   :PlacementService, :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService, :TeamService, :UserService,
                   :UserTeamAssociationService, :WorkflowRequestService],
      :v201905 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdjustmentService, :AdRuleService,
                   :AudienceSegmentService, :BaseRateService, :CompanyService,
                   :CdnConfigurationService, :CmsMetadataService,
                   :ContactService, :ContentBundleService, :ContentService,
                   :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :DaiAuthenticationKeyService, :ExchangeRateService,
                   :ForecastService, :InventoryService, :LabelService,
                   :LineItemCreativeAssociationService, :LineItemService,
                   :LineItemTemplateService, :LiveStreamEventService,
                   :MobileApplicationService, :NativeStyleService,
                   :NetworkService, :OrderService, :PackageService,
                   :ProductPackageService, :ProductPackageItemService,
                   :PlacementService, :PremiumRateService, :ProductService,
                   :ProductTemplateService, :ProposalLineItemService,
                   :ProposalService, :PublisherQueryLanguageService,
                   :RateCardService, :ReconciliationOrderReportService,
                   :ReconciliationLineItemReportService,
                   :ReconciliationReportRowService,
                   :ReconciliationReportService, :ReportService,
                   :SuggestedAdUnitService, :TargetingPresetService,
                   :TeamService, :UserService, :UserTeamAssociationService,
                   :WorkflowRequestService],
      :v201908 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdjustmentService, :AdRuleService,
                   :AudienceSegmentService, :CompanyService,
                   :CdnConfigurationService, :CmsMetadataService,
                   :ContactService, :ContentBundleService, :ContentService,
                   :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :DaiAuthenticationKeyService, :ForecastService,
                   :InventoryService, :LabelService,
                   :LineItemCreativeAssociationService, :LineItemService,
                   :LineItemTemplateService, :LiveStreamEventService,
                   :MobileApplicationService, :NativeStyleService,
                   :NetworkService, :OrderService, :PlacementService,
                   :ProposalLineItemService, :ProposalService,
                   :PublisherQueryLanguageService, :ReportService,
                   :SuggestedAdUnitService, :TargetingPresetService,
                   :TeamService, :UserService, :UserTeamAssociationService],
      :v201911 => [:ActivityGroupService, :ActivityService,
                   :AdExclusionRuleService, :AdjustmentService, :AdRuleService,
                   :AudienceSegmentService, :CompanyService,
                   :CdnConfigurationService, :CmsMetadataService,
                   :ContactService, :ContentBundleService, :ContentService,
                   :CreativeService, :CreativeSetService,
                   :CreativeTemplateService, :CreativeWrapperService,
                   :CustomFieldService, :CustomTargetingService,
                   :DaiAuthenticationKeyService, :ForecastService,
                   :InventoryService, :LabelService,
                   :LineItemCreativeAssociationService, :LineItemService,
                   :LineItemTemplateService, :LiveStreamEventService,
                   :MobileApplicationService, :NativeStyleService,
                   :NetworkService, :OrderService, :PlacementService,
                   :ProposalLineItemService, :ProposalService,
                   :PublisherQueryLanguageService, :ReportService,
                   :SuggestedAdUnitService, :TargetingPresetService,
                   :TeamService, :UserService, :UserTeamAssociationService]
    }

    # Configure the base URL for each version and scope.
    @@config = {
      :oauth_scope => 'https://www.googleapis.com/auth/dfp',
      :header_ns => 'https://www.google.com/apis/ads/publisher/',
      :v201902 => 'https://ads.google.com/apis/ads/publisher/',
      :v201905 => 'https://ads.google.com/apis/ads/publisher/',
      :v201908 => 'https://ads.google.com/apis/ads/publisher/',
      :v201911 => 'https://ads.google.com/apis/ads/publisher/'
    }

    public

    # Getters for constants and module variables.
    def self.default_version
      DEFAULT_VERSION
    end

    def self.latest_version
      LATEST_VERSION
    end

    def self.api_name
      API_NAME
    end

    def self.service_config
      @@service_config
    end

    def self.config(key)
      @@config[key]
    end

    def self.subdir_config
      nil
    end

    def self.default_config_filename
      DEFAULT_CONFIG_FILENAME
    end
  end
end
