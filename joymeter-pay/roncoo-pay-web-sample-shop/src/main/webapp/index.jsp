<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getScheme() + "://" + request.getServerName()
          + ":" + request.getServerPort() + request.getContextPath()
          + "/";
  session.setAttribute("path", path);
%>
<html>
<head>
    <title>扫码支付</title>
  <script type="text/javascript" src="${path}js/jquery-1.7.2.min.js"></script>
  <link href="${path}pay_files/pay.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrap_header">
  <div class="header clearfix">
    <div class="logo_panel clearfix">
      <div class="logo fl"><img src="${path}pay_files/logo.png" alt="logo"></div>
      <div class="lg_txt">| 超仪支付体验平台</div>
    </div>
    <div class="fr tip_panel">
      <div class="txt">欢迎使用超仪支付付款</div>
      <a href="">常见问题</a>
    </div>
  </div>
</div>

<div class="cashier_desk pay_ment">
  <div class="bd">
    <ul class="payment">
      <li><img src="${path}images/weixin.png" alt="微信支付" />
        <form action="${path}joymeterPay/scanPay" method="post">
          <input type="hidden" name="productName" value="微信支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="WEIXIN">
          <input type="hidden" name="remark" value="微信支付备注信息" /><br />
          <p class="pay_btn">
            <input type="submit" value="0.01元支付体验" />
          </p>
        </form>
      </li>
      <li><img src="${path}images/pay.png" alt="支付宝支付" />
        <form action="${path}joymeterPay/scanPay" method="post">
          <input type="hidden" name="productName" value="支付宝支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="ALIPAY">
          <input type="hidden" name="remark" value="支付宝支付备注信息" /><br />
          <p class="pay_btn">
            <input type="submit" value="0.01元支付体验" />
          </p>
        </form>
      </li>
      

<li>
<img src="${path}images/wechatpay.png" alt="公共号支付二维码" />
          <form action="#" method="post">
          <input type="hidden" name="productName" value="支付宝支付产品测试" /><br />
          <input type="hidden" name="orderPrice" value="0.01" /><br />
          <input type="hidden" name="payWayCode" value="ALIPAY">
          <input type="hidden" name="remark" value="支付宝支付备注信息" /><br />
          <p class="pay_btn">
            <input type="button" disabled="disabled" value="公共号支付二维码扫描" />
          </p>
        </form>
</li>
  


  </ul>
  </div>
</div>

<div class="footer w100">
  <div class="container">
    <ul class="con-content">
      <li><strong class="a">联系电话：</strong></li>
      <li>钟经理：18967559502</li>
      <!-- <li class="lightly">电话繁忙时，请联系在线客服</li> -->
    </ul>
    <ul class="con-content">
      <li><strong class="b">工作时间：</strong></li>
      <li>周一至周五  09:00-23:00</li>
      <li>周六至周日  10:00-18:00</li>
    </ul>
    <ul class="con-content">
      <li><strong class="c">反馈意见：</strong></li>
      <li>service@joymeter.com</li>
    </ul>
  </div>
  <div class="copyright">Copyright © 2015-2016 浙江超仪电子技术有限公司版权所有</div>
  <p class="yue"><a href="http://www.joymeter.com/" target="_blank">浙ICP备xxxxxxx号</a></p>
</div>
</body>

</html>
