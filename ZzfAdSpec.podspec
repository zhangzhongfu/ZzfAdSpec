
Pod::Spec.new do |s|
  s.name         = "ZzfAdSpec"
  s.version      = "1.0.0"
  s.summary      = "ZzfAdSpec  无限轮播图"
  s.description  = <<-DESC
                    无限轮播图的spec,请多多指教
                   DESC

  s.homepage     = "https://www.wozaijia.com/"

  s.license      = "MIT"

  s.author             = { "zzf" => "zzf@buduobushao.com" }
  s.platform     = :ios

  s.source       = { :git => "https://github.com/zhangzhongfu/ZzfAdSpec.git", :tag => s.version }
  s.source_files  = "*.{h,m}"

  s.requires_arc = true
end
