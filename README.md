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