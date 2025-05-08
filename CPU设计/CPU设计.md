# CPU设计

部分参考图![a83f1076eb5c9a0ebc089c7e9aaf5e8](.\a83f1076eb5c9a0ebc089c7e9aaf5e8.png)

![4eac706f517118203caa14308f84442](.\4eac706f517118203caa14308f84442.jpg)

具体模块接口：

### PC：主体为一个寄存器，32位，

I：32位next

I：1位reset（异步）

O：32位 address

### NPC：主体为判断

I：32位 now address

I：32位 imm偏移

O：32位 NEXT

### IM：主体为ROM

大小4096*32 bit

0x00003000——————0x00006FFF

I：32位address

O：6位opcode

O：6位function

O：5位rs

O：5位rt

O：5位rd

O：16位imm

### GRF: 主体为32个寄存器

### ALU：实现加减或，同时提供zero接口

I：32位数字A

I：32位数字B

O：32位out

O：1位zero

### DM：数据内存，主体为RAM

I：32位address

I：32位data

I：2位控制信号

O: 32位数据

### 控制器：输入32位opcode，输出各种控制信号



## 几点设计注意

1，PC内外地址不一致，内部用0开头，外部用3000开头

2，扩展性，留好control端口



## 思考题

1，存储功能：IM，DM，PC，GRF

​       逻辑转移：CONTROL，ALU

2，IM可以改进，现在相当于直接从内存调用指令，为了提高时间局部性，可以设计一个cache（暂时没想好用什么）来提速

3，在PC与GRF直接有一个主体为splitter的串并转化接口，负责调整供给其他部分的数据，将32位opcode变成几个部分

4，因为pc可以自加，而其他控制信号都没有触发，所以状态不会转换，所以不用设计

5，中等强度，覆盖数据较多但边值条件没测

