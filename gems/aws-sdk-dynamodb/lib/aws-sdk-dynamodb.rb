# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-dynamodb/types'
require_relative 'aws-sdk-dynamodb/client_api'
require_relative 'aws-sdk-dynamodb/client'
require_relative 'aws-sdk-dynamodb/errors'
require_relative 'aws-sdk-dynamodb/waiters'
require_relative 'aws-sdk-dynamodb/resource'
require_relative 'aws-sdk-dynamodb/table'
require_relative 'aws-sdk-dynamodb/customizations'

# This module provides support for Amazon DynamoDB. This module is available in the
# `aws-sdk-dynamodb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     dynamo_db = Aws::DynamoDB::Client.new
#     resp = dynamo_db.batch_get_item(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DynamoDB are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DynamoDB::Errors::ServiceError
#       # rescues all Amazon DynamoDB API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::DynamoDB

  GEM_VERSION = '1.50.0'

end
