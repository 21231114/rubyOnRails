# rails是怎么启动的
* 启动 
1. 项目会加载项目bin/rails.rb这个文件
```
#!/usr/bin/env ruby
APP_PATH = File.expand_path("../config/application", __dir__)
require_relative "../config/boot"
require "rails/commands"

```
该文件定义了APP_PATH，即我们的项目文件：config/application.rb，并require了config/boot，boot文件主要是做了bundle的初始化。
2. 然后，rails/commands（railties-x.x.x/lib/rails/commands.rb）文件被load进来，由于我们传入的command参数为s，也就是server。

3. 接着，rails/commands/server（railties-x.x.x/lib/rails/commands/server.rb）文件被load进来。

4. 最后，通过调用Rack::Server#start方法启动服务器监听用户请求。
* gem包  
在相关Gemfile里列出的gem包是通过Bundler来加载的。Bundler是一个Ruby应用程序的依赖管理器。它会根据Gemfile.lock文件中列出的依赖关系来加载gem包。Gemfile.lock文件是由Bundler自动生成的，其中包含了所有依赖项及其版本号。当执行bundle install命令时，Bundler会根据Gemfile.lock文件中列出的依赖关系来安装所需的gem包。
