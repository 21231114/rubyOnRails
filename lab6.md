# Gem包
1. activerecord包
    ```
    class ApplicationRecord < ActiveRecord::Base
    primary_abstract_class
    end
    ```
    * 例如cookbook所的对象recipe继承于Base,它提供了创建对象的基本功能：增删改查(与数据库映射)  
    <br/> 
2.  actionview包
    ```
    <%= form_with(model: recipe) do |form| %>
    <% if recipe.errors.any? %>
    <div style="color: red">
        <h2><%= pluralize(recipe.errors.count, "error") %> prohibited this recipe from being saved:</h2>

      <ul>
        <% recipe.errors.each do |error| %>
          <li><%= error.full_message %></li>
        <% end %>
      </ul>
    </div>
    <% end %>

    <div>
    <%= form.label :title, style: "display: block" %>
    <%= form.text_field :title %>
     </div>

    <div>
    <%= form.submit %>
    </div>
    <% end %>

    ```
    例如上述有关form的操作依赖于actionview中的helper.actionview提供有关视图，与用户交互的操作.actionview用于简化html的相关内容  
<br/>
3. activemodel包:  
允许非activerecord类与action path h helper交互，提供了一些基本接口 如回调函数等，可以自己构造ActiveRecord::Base的类。而且ActiveRecord::Base也依赖于该gem包  
<br/> 
4. activejob包：  
当有多个ruby任务在后台进行时，实现异步操作。可以给后台人任务排队，将一个任务分成若干的小单元并行执行,无需程序员考虑像邮件发送等需要异步处理的任务  
<br/>
5.  activestorage包：  
支持文件从服务器和客户端上传到云端；提供磁盘服务，实现本地部署测试  
<br/>  
6. activesupport包：  
实现了ruby语言的扩展，如blank?, present?, duplicable?, deep_dup, try, class_eval, acts_like?, to_param等，更好地处理各种数据类型  
<br/>
7. actionpack包：
```
class RecipesController < ApplicationController
class ApplicationController < ActionController::Base
end
```
上述ruby on rails代码中Base类的具体实现就是在该包。  
提供了处理http请求和响应的工具  
<br/>

8. actionmailer包  
可以使用Action Mailer在Rails应用程序中发送电子邮件，生成和编辑Action Mailer类和mailer视图  
<br/>

9. actionmailer包   
它可以将传入的电子邮件路由到类似控制器的邮箱以在Rails中进行处理  
<br/>

10. actioncable包  
使用WebSockets而不是HTTP请求-响应协议，它允许编写实时功能.  
WebSocket连接的客户端称为消费者。每个消费者可以订阅多个通道，每个通道封装了一个逻辑工作单元，类似于典型MVC设置中控制器的作用
<br/>

11. actiontext包
它将富文本内容和编辑功能引入了Rails.可以各种类型的文本