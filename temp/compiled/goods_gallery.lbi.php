  <div class="slider">
       <div class="slider-box">
           <ul>
           <?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');if (count($_from)):
    foreach ($_from AS $this->_var['picture']):
?>
               <li><a href="<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>"><img src="<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>" width="100%" alt=""></a></li>
               <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
           </ul>
       </div>
   </div>
   <script>
       $(document).ready(function() {
           var silder = $(".slider").slider({
               width: 1,
               height: 1,
               auto: !1
           });
           $(".slider a").click(function (e) { 
               e.preventDefault();
               Dialog.create({
                   type: 'box',
                   title: '',
                   content: '<img src="' + $(this).attr('href') + '">',
                   hasYes: false,
                   hasNo: false
                }).show();
            });
       });
   </script>