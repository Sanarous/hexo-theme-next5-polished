# 基于Next5主题的一款美化的hexo博客主题
![](https://img.shields.io/badge/Next-5.1.4-green.svg) ![](https://img.shields.io/badge/hexo--douban-1.3.3-orange.svg)

![](https://blogimage-1258928558.cos.ap-guangzhou.myqcloud.com/github/hexo-themes-next5-polished/index.png)

效果预览地址：https://bestzuo.cn

⚠️ 注意并不能保证网站的样式与本仓库中样式一致，如果你会修改css样式的话，可以继续在此基础上魔改next主题。

### 使用方法

使用GitBash，进入到本地`hexo`目录，使用以下命令

```shell
git clone https://github.com/Sanarous/hexo-theme-next5-polished.git /themes/hexo-themes-next5-polished
```

其中`hexo-themes-next5-polished`名称可以任取，只要放到`hexo`下的`themes`主题下即可。

### 使用前环境准备

#### 插件准备

由于主题中集成了很多插件，所以为了保证博客样式的完整性，在使用之前，需要先确保你的hexo博客已经安装过如下插件：

```html
"hexo-abbrlink": "^2.0.5",  //生成文章唯一路径
"hexo-admin": "^2.3.0",    //后台插件，可以不安装
"hexo-deployer-git": "^1.0.0",  //git部署插件
"hexo-douban": "^1.1.3",      //豆瓣读书/电影/游戏 页面显示模块
"hexo-generator-baidu-sitemap": "^0.1.6",  //百度sitemap，用于seo，可以不安装
"hexo-generator-sitemap": "^1.2.0",    // 同上
"hexo-generator-feed": "^1.2.2",   //生成RSS订阅插件，可以不安装
"hexo-generator-searchdb": "^1.0.8",  //使用localsearch本地搜索插件
"hexo-leancloud-counter-security": "^1.4.0",  //leanCloud设置
"hexo-neat": "^1.0.4",   //压缩css/html/js工具，也可以使用gulp
"hexo-related-popular-posts": "^3.0.4",  //文末相关文章推荐插件
"hexo-symbols-count-time": "^0.4.4",   //Next6主题字数统计
"hexo-wordcount": "^6.0.1",  //Next5主题字数统计，忘了我用的哪一个，所以都安装一下吧 - -
```

如果你忘了是否安装过这些插件的话，可以打开hexo目录下的`hexo/package.json`文件，核对一下对应上面的插件名称即可。

具体安装上述插件方式：

在GitBash中cd到站点根目录下，使用`npm install hexo-abbrlink --save`命令即可，所有插件安装方式都一样。

#### 配置文件准备

（1）修改valine评论系统

具体方式，在主题配置文件`_config.xml`中搜索`valine`，找到如下配置：

```yml 文件位置：themes/hexo-themes-next5-polished/_config.xml
valine:
  enable: true 
  appid:  # your leancloud application appid
  appkey:  # your leancloud application appkey
  notify: false # mail notifier, See: https://github.com/xCss/Valine/wiki
  verify: false # Verification code
  placeholder: (๑•́ ₃ •̀๑) 留言时填写您的邮箱可以邮件收到博主的回复噢~ # comment box placeholder
  avatar: wavatar # gravatar style
  guest_info: nick,mail # custom comment header
  pageSize: 10 # pagination size
```

其中需要填写`appid`和`appkey`，这两个都在[leanCloud](https://leancloud.cn/)官网注册并获取即可，具体不再赘述，可以参考`valine`的官网：https://github.com/xCss/Valine

（2）设置leanCloud_visitors

同上，在主题配置文件_config.xml中搜索`leanCloud_visitors`，找到如下配置：

```yml
leancloud_visitors:
  enable: true
  app_id: # 同上面valine的app_id
  app_key: # 同上面valine的app_key
```

其中的`app_id`和`app_key`同上面的`valine`下面的，然后需要注意一点的是，这个leanCloud统计文章阅读量需要在leanCloud的存储中新建Class，并且Class名称必须为`Counter`，数据条目设置为限制写入，即其他人可读、不可写。具体使用方式请百度搜索，这里不再赘述。至于为什么不使用不蒜子统计文章阅读量。。主要是不蒜子统计不能进行后台管理呀。

（3）暂时没想到

### 启动hexo博客

然后就可以使用hexo命令启动hexo博客查看效果啦！


