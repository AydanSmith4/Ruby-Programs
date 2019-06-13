
require 'google_drive'
require 'google/apis/drive_v3'

Drive = ::Google::Apis::DriveV3
drive = Drive::DriveService.new

session = GoogleDrive::Session.from_config('credentials.json')
session.upload_from_file('testprogram.csv', 'testprogram.csv', convert: false)
