<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QianTai.aspx.cs" Inherits="Demo.QianTai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="layui-v2.5.5/layui/css/layui.css" rel="stylesheet" />
    <script src="layui-v2.5.5/layui/layui.js"></script>
    <title></title>
    <style type="text/css">
        .d1 {
            width: 100%;
            background-color: blanchedalmond;
           position: fixed;
           top: 0;
          _position:absolute;
  
          overflow:visible; 
        }

        .d2 {
            width: 100%;
            height: 150px;
            background-color: blanchedalmond; 
        }

        .img1 {
            margin-left: 150px;
            margin-top: 50px;
        }

        .d3 {
            margin-left: 1000px;
            margin-top: -50px;
        }

        .d4 {
            margin-left: 1200px;
            margin-top: -33px;
        }

        .d5 {
            margin-left: 1400px;
            margin-top: -33px;
        }
        .down {
        margin-top:210px;
        display:block;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" style="height: 20000px;background-color:antiquewhite">
        <div class="d1">
            <div class="d2">
                <img class="img1" src="img/1.png" />
                <table class="d3">
                    <tr>
                        <td>地址：</td>
                        <td>湖南省长沙市<br />
                            洋湖总部经济区</td>
                    </tr>
                </table>
                <table class="d4">
                    <tr>
                        <td>联系：</td>
                        <td>0371-0000000<br />
                            email@email.mt</td>
                    </tr>
                </table>
                <table class="d5">
                    <tr>
                        <td>营业：9：00</td>

                    </tr>
                    <tr>
                        <td>休业：18：00</td>
                    </tr>
                </table>
            </div>
            <div style="width: 100%; height: 50px; background-color: bisque;">
                <ul class="layui-nav" lay-filter="" style="background-color: burlywood; font-size: 40px;">
                    <li class="layui-nav-item"><a href="">网站首页</a></li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">关于我们</a>
                        <dl class="layui-nav-child" style="background-color: antiquewhite">
                            <!-- 二级菜单 -->
                            <dd><a href="">中医简介</a></dd>
                            <dd><a href="">中医文化</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">健康产品</a>
                        <dl class="layui-nav-child" style="background-color: antiquewhite">
                            <!-- 二级菜单 -->
                            <dd><a href="">特色疗法</a></dd>
                            <dd><a href="">养生天地</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">名医风采</a>
                        <dl class="layui-nav-child" style="background-color: antiquewhite">
                            <!-- 二级菜单 -->
                            <dd><a href="">知名中医</a></dd>
                            <dd><a href="">资深中医</a></dd>
                            <dd><a href="">著名理疗师</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">常见问题</a>
                        <dl class="layui-nav-child" style="background-color: antiquewhite">
                            <!-- 二级菜单 -->
                            <dd><a href="">名医解答</a></dd>
                            <dd><a href="">谈经论道</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">联系我们</a>
                        <dl class="layui-nav-child" style="background-color: antiquewhite">
                            <!-- 二级菜单 -->
                            <dd><a href="">在线留言</a></dd>
                            <dd><a href="">项目预约</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item"><a href="">诚邀加盟</a></li>
                </ul>
               </div>
            </div>
        <div class="down">
            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <div>
                        <img src="img/2.jpg" /></div>
                    <div>
                        <img src="img/3.jpg" /></div>
                    <div>
                        <img src="img/4.jpg" /></div>
                    <div>
                        <img src="img/2.jpg" /></div>
                    <div>
                        <img src="img/3.jpg" /></div>
                </div>

            </div>
            <div style="width: 100%;">
                <div style="width: 100%;">
                    <h1 style="color: brown; text-align: center; margin-top: 10px">优势领域</h1>
                </div>
               </div>
           </div>
    </form>
    <script>
        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function () {
            var element = layui.element;

            //…
        });
    </script>
    <script src="/static/build/layui.js"></script>
    <script>
        layui.use('carousel', function () {
            var carousel = layui.carousel;
            //建造实例
            carousel.render({
                elem: '#test1'
                , width: '100%' //设置容器宽度
                , height: '600px'
                , arrow: 'always' //始终显示箭头
                //,anim: 'updown' //切换动画方式
            });
        });
    </script>
</body>

</html>
