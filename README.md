# Shapes
Shapes - an introductory MPS tutorial From Jetbrains

<blockquote>
<a href="https://www.prnasia.com/story/16187-1.shtml">JetBrains 凭借 MPS 推出新的编程范式</a>
<p>MPS (Meta Programming System) 是一个执行面向语言编程范式的全新概念的软件开发环境，用于创建实际应用和领域专用语言。</p>
<br>
<p>MPS 是一个让专业软件开发人员创建新的自定义语言、扩充现有语言以及使用这些语言来开发程序的环境。MPS 还是一种用于创建领域专用语言 (DSL) 的工具。对编程不甚熟悉的领域专业人士可轻松使用通过 MPS 创建的领域专用语言。
</p>
<br>
<p>MPS 的主要任务是尽可能简单地支持新语言的创建以及现有语言的扩充。其先进的功能支持对语言型态系统、限制性因素以及专用编辑器进行定义，创建功能强大而易于使用的新语言。MPS 使用一种生成方法：在更高层面上描述语言，MPS 以其他语言（尤其是 Java 语言）生成可编译的代码。
<br>
</blockquote>
很久以前了解到的MPS，那个时候只知道MPS是一个Jetbrains开发构件DSL的一门语言，觉得有趣、想学，但它的开发文档实在是太长了，每次都是只看了一点点内容就中断了，最简单的案例<a href="https://www.jetbrains.com/help/mps/fast-track-to-mps.html#step7-shapestutorial">Shapes</a>光看完文章不去理解意思都需要花费很长时间。最近由于打算写一个DSL，着手做时凭着还记得的一点点操作开始创建项目，其实也就会创建Concept，写不出可运行的东西，其他内容是边查边写的，由于脑子里有想要做出来的东西，有个具体的方向，所以更清楚当时想要用用什么东西，也就更清楚去文档中找什么内容，花了几个小时一步步顺腾摸瓜终于把最基本的一套流程弄懂了，也就是Concept → Editor → Generator → Run。下面我将按照官方文档的顺序把Shapes案例的操作流程梳理一遍，不过官方文档实在太长，我会删减很多概念性的东西，只把操作性的东西写出来。

## 具体步骤
[创建Concept](https://blog.csdn.net/qq_24342739/article/details/99821442)
自定义Editor
Java代码的生成
## 目标预览
Shapes这个案例的目的是创建一个简洁的图形描述语言，然后调用Java图形编程接口来绘制出图形，如下图分别为目标语言图形建模（描述）和执行绘制后的结果
![图形描述](https://img-blog.csdnimg.cn/20190823002934945.png)
![绘制图形](https://img-blog.csdnimg.cn/20190823002941805.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
## 一个小提示
MPS的IDE对编辑过程是做了很多限制的，很多东西必须通过快捷键才能出来，刚使用的时候可能有点不习惯

## 创建项目
选择Language Project，然后填写好项目名称、存储路径、语言名称以及勾选上Create Sandbox Solution，Create Sandbox Solution是创建一个可以使用我们当前创建的DSL的沙盒，这样我们就能很方便地边开发边测试。
![创建项目](https://img-blog.csdnimg.cn/20190820102826232.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
可以看到，创建出来的项目包含语言定义部分，和运行沙盒部分
![项目目录](https://img-blog.csdnimg.cn/20190820103402346.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
## 创建Concept
Concept描述的是事物的元模型（或者说元类等），是对模型组件的抽象，从语言层面来说，它描述的是某种DSL的抽象语法（Abstract Syntax）。
### 创建Shape
右键Shapes下的structure，选择new→Concept
![创建Concept](https://img-blog.csdnimg.cn/20190820104056626.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
敲上Concept的名字Shape，Shape是一些具体形状的抽象，因此要将Concept修改为abstract修饰（在光标放在代码处，按ALT+Enter会出现Make Abstract选项）
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190822232046315.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
## 创建Circle
创建第一个具体的形状Circle，其继承自Shape，Shape可以通过手打敲出，也可以通过Ctrl+Space补全出来（注意这个时候要切换到系统输入法，否则补全快捷键将无效）

然后需要添加具体形状Circle的属性，也就是坐标和半径，分别为x、y、radius，它们的类型都设置为integer，在这里提前提个醒，Concept中的properties只能定义四种类型，如下面第二张截图所示，是的你没看错，只有这四种，就连Float都没有，这可能是因为作为一种DSL语言需要更大的灵活性吧，如果需要定义其他类型的数据则需要在children处定义，如果想要知道如何定义这些类型为Float类型，欢迎留言，我会尽可能解答
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190822232833954.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190822233408994.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
### 创建Square
按照创建Circle的步骤再创建一个Square，Square包含的属性是左上角的坐标和边长（有这些属性就能确定一个正方形），也都定义为integer类型
![在这里插入图片描述](https://img-blog.csdnimg.cn/2019082223400697.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
### 创建Canvas
Canvas表示画布，所有图形都绘制在Canvas上，在这个例子中画布Canvas就是一个根元素，所以需要设置instance can be root为true（可以通过手敲出true，也可以通过Ctrl+Space补全），另外需要定义一个children，类型是Shape的数组，也就是一块画布下可以画很多个图形，需要注意的是children中定义的都是数组（强制），如果需要限定为一个则可以定义为Shape[1]
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190822234841313.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
## 创建Shapes模型
上面将当前案例所有用到的Concept都定义好了，接下来进行一次测试，看看如果创建我们自己定义的Concept的模型实例，首先需要重新构建一下项目
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823000247325.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
然后右键sandbox选择new→Canvas，这里创建的Canvas的样式是MPS默认的Editor的样式，由于Canvas实现了INameConcept接口，所以实例中需要canvas的名字，可以观察到默认生成的文件中有个shapes，这就是我们在定义Canvas时定义的children，因为数组大小范围在0..n，所以shape下没有任何内容，也不会报错（如果个数定义为1以上则会标红提示有错）

此时将光标移到shapes下的<<..>>下按下Ctrl+Space会发现补全提示里有circle和square，选中IDE会自动创建带有属性的图形实例，但属性值需要我们输入，如果还需要添加图形则在已创建的图形的花括号结束出按下Enter会自动创建出一块新区域用于创建新的图形实例
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823001027512.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823001422569.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823001346845.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
至此，通过MPS创建Shapes的DSL的第一步——创建Concept就完成了，下一步就需要自定义Editor来使得图形描述起来更简单，就像目标预览中一样。

[上一篇](https://blog.csdn.net/qq_24342739/article/details/99821442)文章介绍了MPS入门案例Shapes中创建Concept的过程，这篇文章将介绍如果创建Shapes这个DSL的Editor，它在语言层面上描述的是某种DSL的具体语法(Concrete Syntax)，也就是建模时写的代码（包含关键字、格式等），我们通常说的C++、Java、Python等的语法事实上指的就是这些语言的具体语法。
## 创建Editor
由于Shape是一个抽象的Concept，所以不需要定义它的Editor，从它的具体Concept开始创建Editor
### 创建Circle的Editor
首先打开Circle的Concept文件，我们可以通过在该文件下右键选择New→Concept Editor创建它的Editor，也可以通过点击编辑器下方的选项卡Editor，进入之后点击空白处选择，如下图所示：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823212334446.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823212521752.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823212559890.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
创建成功之后IDE会自动生成一个Editor的框架，我们需要在上面补全我们我们需要定义的语法，MPS是以单元格（Cell）的形式让用户创建语法树的，MPS提供了各种语法模板，在这里只对该案例需要用到的模板进行介绍，其它模板请查看官方文档。首先我们选中标红处"choose cell model"，在这里可以选择我们要使用的语法模板，此时最后使用Ctrl+Space快捷键来补全语法模板，以下是四种基本布局模板的解释：

 - [] text constant：常量，也就是是一些硬编码的语法，固定不变的东西
 - [-  -] collection intent：单元格集合，当单元格内容满一行时自动换行
 - [/ /] collection vertical：垂直布局的单元格，比如if...else...语句的布局
	```java
	if(condition){
		trueStatement
	} else {
		falseStatement
	}
	```
 - [> <] collection horizontal：水平布局的单元格，比如上面的if和condition就是水平布局

以上后面除了常量，其他三种布局都是可以相互嵌套的，这三种布局也可以嵌套常量，在这里我们选择Circle的跟布局为[-  -] collection intent布局
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823213042770.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823220100926.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)

依次输入一下内容（通过Enter键往后追加单元格，通过Ctrl+Space补全，{}包裹着属性名称表示属性值）：

- 常量：circle
- 常量：x:
- 属性值：{x} 一定要通过Ctrl+Space补全选择{x}，手敲的会作为常量
- 常量：y:
- 属性值：{y} 一定要通过Ctrl+Space补全选择{y}，手敲的会作为常量
- 常量：radius:
- 属性值：{radius} 一定要通过Ctrl+Space补全选择{radius}，手敲的会作为常量

其中常量是固定不变的字符串，属性值是需要我们在建模时输入的值，定义完之后如下图所示：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823223731221.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)

### 创建Square的Editor
按照创建Circle Editor的步骤再来创建一个Square的Editor，包含的内容如下：

 - 常量：square
 - 常量：upperLeftX:
 - 属性值：{upperLeftX}
 - 常量：upperLeftY:
 - 属性值：{upperLeftY}
 - 常量：size:
 - 属性值：{size}

定义完之后如下图所示：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823224917213.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
### 创建Canvas的Editor
Canvas的Edito比Circle和Square稍微复杂一些，因为它包含shapes这个children，需要用到(/ /) child node cell list (vertical)这个布局，如下图所示：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823225937459.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
Canvas的Editor包含的内容如下：
- 常量：Painting
- 属性值：{name} 即Canvas实例的名字
- 子节点的集合：shapes 通过Ctrl + Space补全(\ \\)后输入在< no link >处补全shapes

![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823230856671.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)

按上述定义完Canvas的Editor后，rebuild一次项目，MPS会自动更新我们在上一节最后创建的模型MyDrawing，此时就是最新的样式：
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823230658237.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)

可以发现与预期的有点不一样，原因在于我们在Painting {name}后没有换行，因此需要调整，将光标放置在shapes前的(/出，按快捷键ALT+Enter，在弹出的提示中选择Add On New Line，这样shapes就会在新的一行显示，此时再次rebuild项目，MyDrawing会更新为目标的样式

![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823231025240.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
![在这里插入图片描述](https://img-blog.csdnimg.cn/20190823231037459.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI0MzQyNzM5,size_16,color_FFFFFF,t_70)
至此，所有Concept的Editor就已经定义好，我们此时就可以用自定义的语法来创建图形的实例模型了，后续需要给图形加上颜色属性，以及定义代码生成器去生成Java代码，通过调用Java的图形库来绘制图形。