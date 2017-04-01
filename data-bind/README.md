### ��UI2�����½�һ��ҳ������
```
define(function(require){
var $ = require("jquery");
var justep = require("$UI/system/lib/justep");
var Model = function(){
this.callParent();
this.user = justep.Bind.observable('�ϰ�');
this.say = justep.Bind.observable('�ļ���');
this.result = justep.Bind.computed(function() {
return this.user.get() + " " + this.say.get();
}, this);
};
return Model;
});
```
this.user��this.say������2����ض���this.result���ڼ�ض���ļ��㡣
this.user.get()�ǵõ���ض����ֵ��this.user.set('')�Ǹ���ض����ֵ���и�ֵ��

### ������content1���洴��HTML��view������
```
<div class="x-panel-content" xid="content1">
<p>User��
<input type="text" bind-value="user"/>
</p>
<p>say��
<input type="text" bind-value="say"/>
</p>
<p>Result��
<span bind-text="result"/>
</p>
</div>
```
����ʹ��bind-value���Խ�input�����ֵ�󶨵�user��������ϡ�Ҳ���ǽ���������˫��󶨡���intput��ֵ�����˱仯�����֪ͨ��user��ͬ��user�����˱仯��Ҳ��ʵʱ��ӳ��input��ֵ��bind-text���Ե��������ǽ�result��span��ֵ���а󶨡�

��User��sya������е�ֵ�����޸�֮���ٵ���հ״����ᷢ��Result��ֵҲ��������Ӧ�ı仯��
�����ʵʱ��Ч���������ַ�����
1. ���Խ�bind-value��ֵ����һ������������user����Ϊuser,valueUpdate: 'afterkeydown'��
2. �Զ���һ������bind-textInput��������ֵ����Ϊuser���ɡ�����H5�µ����ԣ�������ide���ӻ������п�������