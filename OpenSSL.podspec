Pod::Spec.new do |s|
  s.name            = "OpenSSL"
  s.version         = "1.0.2l"
  s.summary         = "OpenSSL is an SSL/TLS and Crypto toolkit. Deprecated in Mac OS and gone in iOS, this spec gives your project non-deprecated OpenSSL support."
  s.author          = "OpenSSL Project <openssl-dev@openssl.org>"

  s.homepage        = "https://github.com/limaofeng/OpenSSL-for-IOS"
  s.source          = { :git => "https://github.com/limaofeng/OpenSSL-for-IOS.git", :branch => "master"}
  s.license         = { :type => 'OpenSSL (OpenSSL/SSLeay)', :file => 'include/LICENSE' }

  s.prepare_command = "    ./build-libssl.sh\n    ./create-openssl-framework.sh\n"

  s.ios.deployment_target     = "8.0"
  s.ios.vendored_frameworks   = "openssl.framework"

end
