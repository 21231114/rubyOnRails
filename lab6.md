# Gem包
1. activerecord包
    ```
    class ApplicationRecord < ActiveRecord::Base
    primary_abstract_class
    end
    ```
    * 例如cookbook所的对象recipe继承于Base,它提供了创建对象的基本功能：增删改查(与数据库映射) 
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
    例如上述有关form的操作依赖于actionview中的helper.actionview提供有关视图，与用户交互的操作.