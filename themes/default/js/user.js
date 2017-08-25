/* *
 * 会员登录
 */
function userLogin()
{
  var frm      = document.forms['formLogin'];
  var username = frm.elements['username'].value;
  var password = frm.elements['password'].value;
  var msg = '';

  if (username.length == 0)
  {
    msg += username_empty + '\n';
  }

  if (password.length == 0)
  {
    msg += password_empty + '\n';
  }

  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }
  else
  {
    return true;
  }
}

function chkstr(str)
{
  for (var i = 0; i < str.length; i++)
  {
    if (str.charCodeAt(i) < 127 && !str.substr(i,1).match(/^\w+$/ig))
    {
      return false;
    }
  }
  return true;
}

function check_password( password )
{
    if ( password.length < 6 )
    {
        alert('密码太短');
        return false;
    }
}

function check_conform_password( conform_password )
{
    password = document.getElementById('password').value;
    
    if ( conform_password.length < 6 )
    {
        alert('密码太短');
        return false;
    }
    if ( conform_password != password )
    {
        alert('两次输入密码不一致');
        return false;
    }
}

function is_registered( username )
{
    var submit_disabled = false;
    if (!(/^1[34578]\d{9}$/.test(username))) { 
        alert("手机号码有误，请重填");  
        return false;
    }
    if ( submit_disabled )
    {
        document.forms['formUser'].elements['Submit'].disabled = 'disabled';
        return false;
    }
    Ajax.call( 'user.php?act=is_registered', 'username=' + username, registed_callback , 'GET', 'TEXT', true, true );
}

function registed_callback(result)
{
  if ( result != "true" )
  {
    alert('用户名已经存在');
    document.forms['formUser'].elements['Submit'].disabled = 'disabled';
  }
}

function get_mobile_code(){
    var username = document.forms['formUser'].elements['username'].value;
    var send_code = document.forms['formUser'].elements['send_code'].value;
    if (!(/^1[34578]\d{9}$/.test(username))) { 
        alert("手机号码有误，请重填");  
        return false;
    }
    if (!(/^\d{6}$/.test(send_code))) {
        alert("参数错误，请刷新页面重试");  
        return false;
    };
    Ajax.call( '/sms/sms.php', 'mobile=' + username + '&send_code=' + send_code, mobilecode_callback , 'POST', 'TEXT', true, true );
}

function mobilecode_callback(result){
    alert(result);
    if (result == '提交成功') {
        RemainTime();
    }
}

var iTime = 59;
var Account;
function RemainTime(){
  document.getElementById('getcode').disabled = true;
  var iSecond,sSecond="",sTime="";
  if (iTime >= 0){
    iSecond = parseInt(iTime%60);
    iMinute = parseInt(iTime/60)
    if (iSecond >= 0){
      if(iMinute>0){
        sSecond = iMinute + "分" + iSecond + "秒";
      }else{
        sSecond = iSecond + "秒";
      }
    }
    sTime=sSecond;
    if(iTime==0){
      clearTimeout(Account);
      sTime='获取验证码';
      iTime = 59;
      document.getElementById('getcode').disabled = false;
    }else{
      Account = setTimeout("RemainTime()",1000);
      iTime=iTime-1;
    }
  }else{
    sTime='没有倒计时';
  }
  document.getElementById('getcode').value = sTime;
}