<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Demo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="layui-v2.5.5/layui/css/layui.css" rel="stylesheet" />
    <script src="layui-v2.5.5/layui/layui.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 20px">
            <center>
            <h1>就业学生信息调查</h1>
            <div class="layui-tab layui-tab-card" style="width:500px;height:500px">
                <ul class="layui-tab-title">
                    <li class="layui-this">填写企业信息</li>g
                    <li>公司岗位招聘信息</li>
                    <li>公司正在招聘岗位</li>
                </ul>
                <div class="layui-tab-content" style="height: 100px;">
                    <div class="layui-tab-item layui-show">
                        <div class="layui-form-item">
                            <label class="layui-form-label">城市</label>
                            <div class="layui-input-block">
                                <select name="city" lay-verify="required" style="width: 300px;height:40px">
                                    <option value="">请选择</option>
                                    <option value="0">北京</option>
                                    <option value="1">上海</option>
                                    <option value="2">广州</option>
                                    <option value="3">深圳</option>
                                    <option value="4">杭州</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">企业名</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" required lay-verify="required" autocomplete="off" class="layui-input" style="width: 300px">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">企业编号</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" required lay-verify="required" autocomplete="off" class="layui-input" style="width: 300px">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">所属行业</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" required lay-verify="required" autocomplete="off" class="layui-input" style="width: 300px">
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">公司介绍</label>
                            <div class="layui-input-block">
                                <textarea name="desc" placeholder="请输入内容" class="layui-textarea" style="width:300px"></textarea>
                            </div>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="上一步" class="layui-btn layui-btn-radius layui-btn-primary"></asp:Button>
                        <asp:Button ID="Button2" runat="server" Text="下一步" class="layui-btn layui-btn-radius layui-btn-primary" style="margin-left:315px"></asp:Button>
                    </div>
                   
                    <div class="layui-tab-item">
                         <div class="layui-form-item">
                             <label class="layui-form-label">岗位名称</label>
                             <div class="layui-input-block">
                              <input type="text" name="title" required  lay-verify="required"  autocomplete="off" class="layui-input" style="width: 300px">
                           </div>
                         </div>
                        <div class="layui-form-item" >
    <label class="layui-form-label">方向</label>
    <div class="layui-input-block">
      <select name="city" lay-verify="required" style="width: 300px;height:40px">
        <option value="">请选择</option>
        <option value="0">北京</option>
        <option value="1">上海</option>
        <option value="2">广州</option>
        <option value="3">深圳</option>
        <option value="4">杭州</option>
      </select>
    </div>
  </div>
 <div class="layui-form-item">
                             <label class="layui-form-label">工作年限</label>
                             <div class="layui-input-block">
                              <input type="text" name="title" required  lay-verify="required"  autocomplete="off" class="layui-input" style="width: 300px">
                           </div>
                         </div>
                        <div class="layui-form-item" >
    <label class="layui-form-label">来源</label>
    <div class="layui-input-block">
      <select name="city" lay-verify="required" style="width: 300px;height:40px">
        <option value="">请选择</option>
        <option value="0">北京</option>
        <option value="1">上海</option>
        <option value="2">广州</option>
        <option value="3">深圳</option>
        <option value="4">杭州</option>
      </select>
    </div>
  </div>
                         <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">岗位描述</label>
    <div class="layui-input-block">
      <textarea name="desc"  class="layui-textarea" style="width:300px"></textarea>
    </div>
  </div>
                        <div>
                            <center>
                            <asp:Button ID="Button3" runat="server" Text="添加" class="layui-btn layui-btn-primary"></asp:Button>
                                </center>
                        </div>
                         <asp:Button ID="Button4" runat="server" Text="上一步" class="layui-btn layui-btn-radius layui-btn-primary"></asp:Button>
                        <asp:Button ID="Button5" runat="server" Text="下一步" class="layui-btn layui-btn-radius layui-btn-primary" style="margin-left:315px"></asp:Button>
                    </div>
                    <div class="layui-tab-item">
                         <div class="layui-form-item" >
    <label class="layui-form-label">岗位名称</label>
    <div class="layui-input-block">
      <select name="city" lay-verify="required" style="width: 300px;height:40px">
        <option value="">请选择</option>
        <option value="0">.NET</option>
        <option value="1">JAVA</option>
        <option value="2">HTML</option>
        <option value="3">C#</option>
      </select>
    </div>
  </div>
<div class="layui-form-item" >
    <label class="layui-form-label">招聘人数</label>
    <div class="layui-input-block">
      <select name="city" lay-verify="required" style="width: 300px;height:40px">
        <option value="">请选择</option>
        <option value="0">1</option>
        <option value="1">2</option>
        <option value="2">3</option>
        <option value="3">4</option>
      </select>
    </div>
  </div>
                        <div class="layui-form-item">
                             <label class="layui-form-label">开始时间</label>
                             <div class="layui-input-block">
                              <input type="text" name="title" required  lay-verify="required"  autocomplete="off" class="layui-input" style="width: 300px">
                           </div>
                         </div>
                        <div class="layui-form-item">
                             <label class="layui-form-label">结束时间</label>
                             <div class="layui-input-block">
                              <input type="text" name="title" required  lay-verify="required"  autocomplete="off" class="layui-input" style="width: 300px">
                           </div>
                         </div>
                        <div class="layui-form-item">
                             <label class="layui-form-label">平均薪资</label>
                             <div class="layui-input-block">
                              <input type="text" name="title" required  lay-verify="required"  autocomplete="off" class="layui-input" style="width: 300px">
                           </div>
                         </div>
                        <div>
                            <center>
                            <asp:Button ID="Button6" runat="server" Text="添加" class="layui-btn layui-btn-primary"></asp:Button><br /><br />
                            <asp:Button ID="Button7" runat="server" Text="提交就业信息调查" class="layui-btn layui-btn-normal"></asp:Button>
                                </center>
                        </div>
                         <asp:Button ID="Button8" runat="server" Text="上一步" class="layui-btn layui-btn-radius layui-btn-primary"></asp:Button>
                        <asp:Button ID="Button9" runat="server" Text="下一步" class="layui-btn layui-btn-radius layui-btn-primary" style="margin-left:315px"></asp:Button>
                    </div>
                </div>
            </div>
                </center>
        </div>
    </form>
    <script>
        //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function () {
            var element = layui.element;

            //…
        });
    </script>
</body>
</html>
