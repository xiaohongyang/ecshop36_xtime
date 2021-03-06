var City = (function () {
    function City(element, options) {
        this.element = element;
        this._index = -1;
        this.options = $.extend({}, new CityDefaultOptions(), options);
        if (!this.options.onchange) {
            this.options.onchange = this._onchange;
        }
        this._init();
        var instance = this;
        this.element.click(function () {
            instance.show();
        });
    }
    City.prototype._onchange = function (id, index, selected) {
        if (typeof this.options.data == 'object') {
            this._setData(id, index, selected);
            return;
        }
        if (typeof this.options.data != 'string') {
            return false;
        }
        var instance = this;
        $.getJSON(this.options.data, function (data) {
            if (data.code == 0) {
                instance.options.data = data.data;
                instance._setData(id, index, selected);
            }
        });
    };
    City.prototype._setData = function (id, index, selected) {
        var _this = this;
        if (!id) {
            this.addTab(this.options.data);
            selected && this.selectedId(selected);
            return;
        }
        var data = this.options.data;
        this.map(function (id) {
            data = data[id][_this.options.children];
            if (!data) {
                return false;
            }
        });
        if (!data) {
            this.options.done && this.options.done.call(this);
            return;
        }
        this.addTab(data);
        selected && this.selectedId(selected);
    };
    City.prototype._init = function () {
        if (typeof this.options.default != 'object') {
            this.options.default = [this.options.default];
        }
        this._create();
        this._bindEvent();
        this.selected();
    };
    /**
     * 获取生成标签的头和身体
     */
    City.prototype._getHtml = function (data, title, selected) {
        if (title === void 0) { title = '请选择'; }
        var html = '';
        var instance = this;
        var header = '<li class="active">' + title + '</li>';
        $.each(data, function (i, item) {
            var _a = instance._getIdAndName(item, i), id = _a[0], name = _a[1];
            if (selected && id == selected) {
                html += '<li class="selected" data-id="' + id + '">' + name + '</li>';
                header = '<li class="active" data-id="' + id + '">' + name + '</li>';
                return;
            }
            html += '<li data-id="' + id + '">' + name + '</li>';
        });
        return [header, '<ul class="active">' + html + '</ul>'];
    };
    City.prototype._getIdAndName = function (item, i) {
        if (typeof item != 'object') {
            return [i, item];
        }
        var name = item[this.options.name];
        if (this.options.id && item.hasOwnProperty(this.options.id)) {
            return [item[this.options.id], name];
        }
        return [i, name];
    };
    City.prototype._create = function () {
        this.box = $('<div class="selector" data-type="selector"></div>');
        this.box.html('<ul class="selector-header"></ul><div class="selector-body"></div><i class="fa fa-close"></i>');
        $(document.body).append(this.box);
        this._header = this.box.find('.selector-header');
        this._body = this.box.find('.selector-body');
    };
    City.prototype._bindEvent = function () {
        var instance = this;
        this.box.on('click', '.fa-close', function () {
            instance.close();
        });
        this._header.on('click', 'li', function () {
            instance.selectedTab($(this).index());
        });
        this._body.on('click', 'li', function () {
            var $this = $(this);
            var id = $this.attr('data-id');
            var index = $this.parent().index();
            $this.addClass('selected').siblings().removeClass('selected');
            instance._header.find('li').eq(index).attr('data-id', id)
                .text($this.text());
            instance.selected(id, index);
        });
        /** 实现隐藏 */
        this.box.click(function (e) {
            e.stopPropagation();
        });
        this.element.click(function (e) {
            e.stopPropagation();
        });
        $(document).click(function () {
            instance.box.hide();
        });
    };
    City.prototype.setDefault = function () {
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        this.options.default = args;
        this.selected();
    };
    City.prototype.bodyMap = function (callback, index) {
        if (index === void 0) { index = this._index; }
        this._body.find('ul').eq(index).find('li').each(function (i, ele) {
            var item = $(ele);
            var id = item.attr('data-id');
            if (!id) {
                return;
            }
            if (callback.call(item, id, item.text(), i) == false) {
                return false;
            }
        });
    };
    City.prototype._getSelect = function (index) {
        if (index === void 0) { index = 0; }
        if (this.options.default.length > index) {
            return this.options.default[index];
        }
        this.options.default = [];
        return undefined;
    };
    /**
     * 加载下一页不进行选择
     */
    City.prototype.selected = function (id, index) {
        if (index === void 0) { index = this._index; }
        this.remove(index + 1);
        var data = this.options.onchange.call(this, id, index, this._getSelect(index + 1));
        if (typeof data == 'object') {
            this.addTab(data, '请选择', this._getSelect(index + 1));
        }
        if (data == false) {
            this.options.done && this.options.done.call(this);
            return;
        }
        return this;
    };
    /**
     * 选中并触发加载下一页 不进行自动关闭
     */
    City.prototype.selectedId = function (id, index) {
        if (index === void 0) { index = this._index; }
        this.bodyMap(function (i) {
            if (i == id) {
                this.trigger('click');
                return false;
            }
        }, index);
    };
    City.prototype.close = function () {
        this.box.hide();
        return this;
    };
    City.prototype.show = function () {
        var offset = this.element.offset();
        var x = offset.left;
        var y = offset.top + this.element.outerHeight();
        this.box.css({ left: x + "px", top: y + "px" }).show();
        return this;
    };
    City.prototype.selectedTab = function (index) {
        this._index = index;
        this._header.find('li').eq(index).addClass('active').siblings().removeClass('active');
        this._body.find('ul').eq(index).addClass('active').siblings().removeClass('active');
        return this;
    };
    City.prototype.addTab = function (data, title, selected) {
        if (title === void 0) { title = '请选择'; }
        this._header.find('li').removeClass('active');
        this._body.find('ul').removeClass('active');
        var _a = this._getHtml(data, title, selected), header = _a[0], body = _a[1];
        this._header.append(header);
        this._body.append(body);
        return this;
    };
    City.prototype.remove = function (start) {
        if (start === void 0) { start = 1; }
        var headers = this._header.find('li');
        var bodies = this._body.find('ul');
        for (var i = headers.length - 1; i >= start; i--) {
            headers.eq(i).remove();
            bodies.eq(i).remove();
        }
        return this;
    };
    City.prototype.map = function (callback) {
        this._header.find('li').each(function (i, ele) {
            var item = $(ele);
            var id = item.attr('data-id');
            if (!id) {
                return;
            }
            if (callback.call(item, id, item.text(), i) == false) {
                return false;
            }
        });
        return this;
    };
    City.prototype.text = function (link) {
        if (link === void 0) { link = this.options.line; }
        var arg = [];
        this.map(function (id, name) {
            arg.push(name);
        });
        return arg.join(link);
    };
    City.prototype.val = function () {
        var val = '';
        this.map(function (id) {
            val = id;
        });
        return val;
    };
    City.prototype.all = function () {
        var data = [];
        this.map(function (id) {
            data.push(id);
        });
        return data;
    };
    City.prototype.output = function (element) {
        if (element === void 0) { element = this.element; }
        element.attr('data-id', this.val());
        if (element.is('input') || element.is('textarea')) {
            element.val(this.text());
            return;
        }
        element.text(this.text());
    };
    return City;
}());
var CityDefaultOptions = (function () {
    function CityDefaultOptions() {
        this.data = '';
        this.id = 'id';
        this.name = 'name';
        this.children = 'children';
        this.line = '-';
    }
    return CityDefaultOptions;
}());
;
(function ($) {
    $.fn.city = function (options) {
        return new City(this, options);
    };
})(jQuery);
