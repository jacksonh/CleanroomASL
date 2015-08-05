Pod::Spec.new do |spec|
  spec.name         = 'CleanroomASL'
  spec.version      = '1.1.3'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/emaloney/CleanroomASL'
  spec.authors      = { 'emaloney' => 'tonymillion@gmail.com' }
  spec.summary      = 'A Swift-based API for reading from & writing to the Apple System Log'
  spec.source       = { :git => 'git@github.com:emaloney/CleanroomASL.git', :tag => spec.version }
  spec.source_files = 'Code/*.swift', 'CleanroomASL.h'
  spec.module_map = 'CleanroomASL.modulemap'
end

