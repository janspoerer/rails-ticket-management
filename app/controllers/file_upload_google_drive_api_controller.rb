require 'google/apis/drive_v2'
require 'googleauth'
require 'google/apis/sqladmin_v1beta4'

sqladmin = Google::Apis::SqladminV1beta4::SqladminService.new

# Get the environment configured authorization
scopes =  ['https://www.googleapis.com/auth/sqlservice.admin']
sqladmin.authorization = Google::Auth.get_application_default(scopes)

drive = Google::Apis::DriveV2:DriveService.new
drive.authorization = ...
drive.insert_file(file_metadata, upload_source: 'mymovie.m4v',
                  content_type: 'video/mp4', options: { retries: 3 } )
