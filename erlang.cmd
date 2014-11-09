C:\Program Files\erl5.10.2\usr
cd ("C:\Program Files").
pwd().

A++B将B列表附加到A后面
A--B：从列表A中删除列表B。即将B中元素从A中删除

K#Digits表示K进制数 Digits
2#00101010 表示二进制数00101010 
16#af6bfa23b表示16进制数字f6bfa23b

X=:=Y X全等于Y
X=/=Y X全等于Y

code:get_path().  查询加载路径

init:get_argument(home). 查询home路径

halt().退出shell

执行erlang脚本的方法:
1.编译程序：erlc 文件.erl
2.erl -noshell -s 文件 文件中函数 -s init stop

help()查看调试命令

c、c++、JAVA语言不要使用递归，容易把堆栈击穿

time:tc(xxx,func,param):计时

erlang的尾部递归技术，在使用erlang 编写递归函数的时候，一定要把递归调用放在最后，两次递归调用之间不能有其他任何任何函数调用，否则会出现堆栈击穿问题

SideBarEnhancements 这个插件提供了侧边栏附加的上下文菜单选项，例如"New file"，"New Floder"等。这些本应当默认就该有的，却没有。
　11.Ctags插件
terminal
