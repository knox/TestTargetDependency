Pod::Spec.new do |s|
  s.name = 'TestTargetDependencyLib'
  s.version = '0.0.1'
  s.summary = 'A short description of TestTargetDependencyLib.'

  s.homepage = 'https://github.com/knox/TestTargetDependency'
  s.license = { :type => 'MIT' }
  s.author = 'Mickey Knox'
  s.source = { :git => 'https://github.com/Knox/TestTargetDependency.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.1'
  s.swift_version = '5.4'

  s.source_files = [
    'TestTargetDependencyLib/Classes/**/*',
    'TestTargetDependencyLib/Extensions/**/*'
  ]
  
end
