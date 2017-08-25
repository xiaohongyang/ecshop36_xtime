<?php
namespace zd;

use Zodream\Domain\Html\PageLink;

class Page extends PageLink {
    protected $default = array(
        'total' => 0, //总条数
        'pageSize' => 20,
        'key' => 'page',
        'page' => 1,
        'length' => 5, //数字分页显示
        /**
         * 分页显示模板
         * 可用变量参数
         * {total}      总数据条数
         * {pageSize}   每页显示条数
         * {start}      本页开始条数
         * {end}        本页结束条数
         * {pageTotal}  共有多少页
         * {url}        生成的链接
         * {key}        页码所对应的键
         * {page}       当前页
         * {previous}   上一页
         * {next}       下一页
         * {list}       数字分页
         * {goto}       跳转按钮
         */
        'template' => '<div class="fenye">
            <div class="qian">
                {previous}
                <div class="fang">
                    {list}
                </div>
                {next}
                <div class="clear"></div>
            </div>
            <div class="hou">
                <p>共{pageTotal}页</p>
                {goto}
            </div>
            <div class="clear"></div>
        </div>',
        'active' => '<a href="javascript:;" class="current">{text}</a>',//'<li class="active"><a href="javascript:;">{text}</a></li>';
        'common' => '<a href="{url}">{text}</a>',
        'previous' => '上一页',
        'next' => '下一页',
        'goto' => '<span>转至<input type="text" id="page-input" value="{page}" 
            onkeydown="if ( event.keyCode == 13) {
                var page = (this.value > {pageTotal}) ? {pageTotal} :this.value;location =\'{url}&{key}=\'+page+\'\'}" style="width:25px;"/>页</span>
            <input type="button" onclick="
            var page = (document.getElementById(\'page-input\').value > {pageTotal} ) ? {pageTotal} : document.getElementById(\'page-input\').value;
            location =\'{url}&{key}=\'+page+\'\'" value="确定" class="confirm"/>'
    );

    protected function getPrevious() {
        if ($this->get('page') < 2) {
            return null;
        }
        return sprintf('<span class="shang">%s</span>',
            $this->replaceLine($this->get('page') - 1, $this->get('previous')));
    }

    protected function getNext() {
        if ($this->get('page')< $this->pageTotal) {
            return sprintf('<span class="xia">%s</span>', $this->replaceLine($this->get('page')+ 1, $this->get('next')));
        }
        return null;
    }

    protected function getOmit() {
        return '<p>...</p>';
    }
}