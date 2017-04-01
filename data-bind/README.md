### 在UI2下面新建一个页面如下
```
define(function(require){
var $ = require("jquery");
var justep = require("$UI/system/lib/justep");
var Model = function(){
this.callParent();
this.user = justep.Bind.observable('老白');
this.say = justep.Bind.observable('聊技术');
this.result = justep.Bind.computed(function() {
return this.user.get() + " " + this.say.get();
}, this);
};
return Model;
});
```
this.user和this.say创建了2个监控对象，this.result用于监控对象的计算。
this.user.get()是得到监控对象的值，this.user.set('')是给监控对象的值进行赋值。

### 我们再content1下面创建HTML（view）代码
```
<div class="x-panel-content" xid="content1">
<p>User：
<input type="text" bind-value="user"/>
</p>
<p>say：
<input type="text" bind-value="say"/>
</p>
<p>Result：
<span bind-text="result"/>
</p>
</div>
```
我们使用bind-value属性将input输入的值绑定到user这个属性上。也即是进行了数据双向绑定。当intput的值发生了变化，则会通知到user。同理user发生了变化，也会实时反映给input的值。bind-text属性的作用则是将result与span的值进行绑定。

将User和sya输入框中的值进行修改之后，再点击空白处，会发现Result的值也发生了相应的变化。
如果想实时的效果，有两种方案：
1. 可以将bind-value的值附加一个参数，即将user，改为user,valueUpdate: 'afterkeydown'。
2. 自定义一个属性bind-textInput，将它的值设置为user即可。这是H5新的属性，不过在ide可视化界面中看不到。