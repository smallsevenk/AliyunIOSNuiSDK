Pod::Spec.new do |s|
  s.name             = 'AliyunIOSNuiSDK'
  s.version          = '0.0.1'
  s.summary          = 'Aliyun NUI iOS SDK for Flutter plugin.'
  s.homepage         = 'https://your-company-homepage.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.platform         = :ios, '13.0'
  s.vendored_frameworks = 'nuisdk.framework' 
  s.public_header_files = 'nuisdk.framework/Headers/*.h'
  
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = {'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64' }

  # 支持 Apple Silicon 和 Intel 模拟器
  # 如果有 modulemap，可加如下（没有可忽略）
  # s.module_map = 'nuisdk.framework/Modules/module.modulemap'
end
