
<footer class="navbar navbar-default navbar-fixed-bottom" style="z-index:1">
  <dl<?php if ($this->_var['menuIndex'] < 1): ?> class="current"<?php endif; ?>>
    <dt><a href="/"><img src="themes/default/img/1<?php if ($this->_var['menuIndex'] < 1): ?>-1<?php endif; ?>.png"></a></dt>
    <dd><a href="/">商城</a></dd>
  </dl>
  <dl<?php if ($this->_var['menuIndex'] == 1): ?> class="current"<?php endif; ?>>
    <dt><a href="auction.php"><img src="themes/default/img/2<?php if ($this->_var['menuIndex'] == 1): ?>-2<?php endif; ?>.png"></a></dt>
    <dd><a href="auction.php">竞拍</a></dd>
  </dl>
  <dl<?php if ($this->_var['menuIndex'] == 2): ?> class="current"<?php endif; ?>>
    <dt><a href="flow.php"><img src="themes/default/img/3<?php if ($this->_var['menuIndex'] == 2): ?>-3<?php endif; ?>.png"></a></dt>
    <dd><a href="flow.php">购物车</a></dd>
  </dl>
  <dl<?php if ($this->_var['menuIndex'] == 3): ?> class="current"<?php endif; ?>>
    <dt><a href="user.php"><img src="themes/default/img/4<?php if ($this->_var['menuIndex'] == 3): ?>-4<?php endif; ?>.png"></a></dt>
    <dd><a href="user.php">我的</a></dd>
  </dl>
</footer>