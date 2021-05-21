## 如何安装

Makefile文件中用到了`xelatex`和`bibtex`，安装TeXLive，应该就可以成功编译。

## Q&A

Q: 如何将包引用独立到单独的文件
A: 将包引用都写入IncludePackages.tex中,然后在主文件中写入`\input{IncludePackages}`

Q: 如何将段落独立到单独的文件
A: 和将引用独立为单独包一样，将段落写入paragraph.tex，然后在主文件相应位置写入`\input{paragraph}`

Q: 如何配置图片路径
A: 默认情况下图片应该放在根目录下才能找到，不然在编码的时候需要将文件夹的路径一起写进去。
还有一种方法就是将图片统一放在一个文件夹里，然后使用
```
\graphicspath{{./images/}}
```

Q: 如何配置文献引用
A: 将引用写入引用文件`references.bib`，然后在主文件相应位置写`\bibliography{references}`



Q: 如何引用文献

A: 上面配置文献引用只是将引用变得可用，而不一定会显示出来，只有被引用的文献才会显示在文档底部。在文章的相应位置使用`\cite{文献名}`就可以以编号的形式显示在文章该处，并且将文献引用添加在文档底部。

有时我们希望文献引用显示在文档底部，但是并没有在文章中引用该文献，可以通过`\nocite{文献名}`实现。

Q: 如何注释
A: 

* 单行注释
  在行开始使用`%`注释

- 多行注释
    引入包

    ```
        \usepackage{verbatim}
        \begin{comment}
        中间是注释
        \end{comment}
    ```

Q: 如何插入图片

A:

```
% fiture
\begin{figure}
\centering
\includegraphics[width=0.8\textwidth]{图片名称.png}
\caption{图片下面的文字}
\label{识别图片的标识}
\end{figure}
```



Q: 如何在文章中引用（指明）图片

A: 使用在插入图片时用到的label，`\ref{图片标识}`。