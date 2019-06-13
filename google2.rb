
require 'google_drive'
require 'google/apis/drive_v3'

Drive = ::Google::Apis::DriveV3
drive = Drive::DriveService.new

session = GoogleDrive::Session.from_config('credentials.json')
session.upload_from_file('testprogram.csv', 'testprogram.csv', convert: false)

file_metadata = {
    :name => 'testprogram'
}
file = drive_service.create_file(file_metadata,
                                 fields: 'id',
                                 upload_source: 'testprogram.csv',
                                 content_type: 'file/csv')
puts "File Id: #{file.id}"
file_metadata = {}
file = drive_service.update_file(id,
                                 file_metadata,
                                 fields: 'id',
                                 upload_source: 'testprogam.csv',
                                 content_type: 'file/csv')
puts "File Id: #{file.id}"