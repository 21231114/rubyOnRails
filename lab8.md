# ruby on rails中使用2种或以上的layout
* 方法一
1. 在app/views/layouts文件夹中创建布局文件
2. 在控制器中添加有关布局渲染的声明，如在blogcontroller中写如下代码  
```
layout "layout1", :only=> [:index]
``` 
则就会只在首页渲染layout1而在其他页面渲染application
* 方法二
1. 在app/views/layouts文件夹中创建布局文件
2. 在控制器对应的操作中，如index中使用render渲染对应布局文件
如
```
def index
    @blogs = Blog.all
    render layout: "layout1"
  end
```