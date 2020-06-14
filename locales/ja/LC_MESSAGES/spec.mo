Þ    v      Ì              |  t   }  ¹   ò  Û   ¬     	  ¦   
  V   Á
       E  µ    û       §   *  1   Ò  Ô     }   Ù     W     ê     ÷  n                £  '   B  <   j  s  §  N       j        A        U  ~   n  I   í     7      L     m  p        þ          8     Q  ÿ  j  3   j  &    Q   Å  D      Ð   \   ê   -!  ?   "  ¡   X"  Ä   ú"     ¿#     Ó#  ±  à#  ®   %  f   A&  i   ¨&  7   '  Ò   J'  G   (     e(  V  q(  .   È+  '   ÷+      ,  ²  @,     ó-  '   
.  ,   2.     _.  
   h.     s.     .     .     ¢.    ³.  .   Q0     0  *   0     Ê0  Ã   Ï0  õ   1  1   2  6   »2  º   ò2  I   ­3  b   ÷3    Z4  =  \5  Ã   6  ^   ^7  <   ½7  "   ú7     8  *   -8  8   X8    8  
  ¨9  8   ³:  #  ì:  Z   =  ¤   k=  ·   >  >   È>     ?  `  ?     è@  |   hA     åA     |B     C  ³   C  w   ÒC  À   JD     E     !E  U   3E  E   E     ÏE  º  mF  {   (H    ¤H  -  §I  Á   ÕJ  ä   K  O   |L  ¾   ÌL  #  M    ¯N  .   »P  Ñ   êP  Q   ¼Q     R     S     S     %T  <   2T  ¨   oT     U    1U  i  CV  K   ­Y  N   ùY  ¨  HZ  x   ñ[    j\     {^  f   ^  B   _  Ô   D_     `     ª`  0   ·`  K   è`     4a  ^   ºa  ^   b  4   xb  ^   ­b  ¹  c  <   Æe  %  f  i   )g  {   g  ù   h  >  	i  e   Hj  ¾   ®j  þ   mk     ll     l  '  l  î   Æn  Û   µo     p  E   'q  Í   mq  V   ;r     r  S  ¨r  7   üv  1   4w  H   fw    ¯w     2z  =   Qz  3   z  <   Ãz      {     {     {  '   *{  '   R{    z{  K   }  6   \}  <   }     Ð}  ä   ×}  K  ¼~  ?     <   H  Ë     <   Q  p     {  ÿ  °  {  ö   ,  s   #  T     9   ì     &  <   3  9   p    ª  2  9  W   l    Ä     \    Ý  Þ   â  K   Á  Ç     f  Õ  É   <  ¨     Ø   ¯  ·        @    R  u   a  U  ×     -     M  e   `  G   Æ  ¶      (There are some relevant comments by John Gruber [here](http://article.gmane.org/gmane.text.markdown.general/2554).) A [Unicode whitespace character](@) is any code point in the Unicode `Zs` general category, or a tab (`U+0009`), carriage return (`U+000D`), newline (`U+000A`), or form feed (`U+000C`). A [character](@) is a Unicode code point.  Although some code points (for example, combining accents) do not correspond to characters in an intuitive sense, all code points count as characters for purposes of this spec. A [line ending](@) is a newline (`U+000A`), a carriage return (`U+000D`) not followed by a newline, or a carriage return and a following newline. A [line](@) is a sequence of zero or more [characters] other than newline (`U+000A`) or carriage return (`U+000D`), followed by a [line ending] or by the end of file. A [non-whitespace character](@) is any character that is not a [whitespace character]. A [punctuation character](@) is an [ASCII punctuation character] or anything in the general Unicode categories  `Pc`, `Pd`, `Pe`, `Pf`, `Pi`, `Po`, or `Ps`. A [setext heading underline](@) is a sequence of `=` characters or a sequence of `-` characters, with no more than 3 spaces indentation and any number of trailing spaces.  If a line containing a single `-` can be interpreted as an empty [list items], it should be interpreted this way and not as a [setext heading underline]. A [setext heading](@) consists of one or more lines of text, each containing at least one [non-whitespace character], with no more than 3 spaces indentation, followed by a [setext heading underline].  The lines of text must be such that, were they not followed by the setext heading underline, they would be interpreted as a paragraph:  they cannot be interpretable as a [code fence], [ATX heading][ATX headings], [block quote][block quotes], [thematic break][thematic breaks], [list item][list items], or [HTML block][HTML blocks]. A [space](@) is `U+0020`. A [whitespace character](@) is a space (`U+0020`), tab (`U+0009`), newline (`U+000A`), line tabulation (`U+000B`), form feed (`U+000C`), or carriage return (`U+000D`). A closing sequence of `#` characters is optional: A line consisting of 0-3 spaces of indentation, followed by a sequence of three or more matching `-`, `_`, or `*` characters, each followed optionally by any number of spaces or tabs, forms a [thematic break](@). A line containing no characters, or a line containing only spaces (`U+0020`) or tabs (`U+0009`), is called a [blank line](@). A sequence of `#` characters with anything but [spaces] following it is not a closing sequence, but counts as part of the contents of the heading: ATX headings ATX headings can be empty: ATX headings need not be separated from surrounding content by blank lines, and they can interrupt paragraphs: About this document An [ASCII punctuation character](@) is `!`, `"`, `#`, `$`, `%`, `&`, `'`, `(`, `)`, `*`, `+`, `,`, `-`, `.`, `/` (U+0021â2F),  `:`, `;`, `<`, `=`, `>`, `?`, `@` (U+003Aâ0040), `[`, `\`, `]`, `^`, `_`, `` ` `` (U+005Bâ0060),  `{`, `|`, `}`, or `~` (U+007Bâ007E). An [ATX heading](@) consists of a string of characters, parsed as inline content, between an opening sequence of 1--6 unescaped `#` characters and an optional closing sequence of any number of unescaped `#` characters. The opening sequence of `#` characters must be followed by a [space] or by the end of line. The optional closing sequence of `#`s must be preceded by a [space] and may be followed by spaces only.  The opening `#` character may be indented 0-3 spaces.  The raw contents of the heading are stripped of leading and trailing spaces before being parsed as inline content.  The heading level is equal to the number of `#` characters in the opening sequence. And here is the equivalent in Markdown: Any sequence of [characters] is a valid CommonMark document. At least one space is required between the `#` characters and the heading's contents, unless the heading is empty.  Note that many implementations currently do not require the space.  However, the space was required by the [original ATX implementation](http://www.aaronsw.com/2002/atx/atx.py), and it helps prevent things like the following from being parsed as headings: Backslash-escaped `#` characters do not count as part of the closing sequence: Because there is no unambiguous spec, implementations have diverged considerably.  As a result, users are often surprised to find that a document that renders one way on one system (say, a GitHub wiki) renders differently on another (say, converting to docbook using pandoc).  To make matters worse, because nothing in Markdown counts as a "syntax error," the divergence often isn't discovered right away. Blocks and inlines Can link references be defined inside block quotes or list items? Can list items be empty? Can list items include section headings?  (`Markdown.pl` does not allow this, but does allow blockquotes to include headings.) Can list markers be indented?  Can ordered list markers be right-aligned? Characters and lines Container blocks and leaf blocks Contents are parsed as inlines: For security reasons, the Unicode character `U+0000` must be replaced with the REPLACEMENT CHARACTER (`U+FFFD`). Four spaces are too much: Four spaces indent is too much: Four spaces is too many: Four spaces is too much: How much indentation is needed for a sublist?  The spec says that continuation paragraphs need to be indented four spaces, but is not fully explicit about sublists.  It is natural to think that they, too, must be indented four spaces, but `Markdown.pl` does not require that.  This is hardly a "corner case," and divergences between implementations on this issue often lead to surprises for users in real documents. (See [this comment by John Gruber](http://article.gmane.org/gmane.text.markdown.general/1997).) However, no other characters may occur in the line: If a line of dashes that meets the above conditions for being a thematic break could also be interpreted as the underline of a [setext heading], the interpretation as a [setext heading] takes precedence. Thus, for example, this is a setext heading, not a paragraph followed by a thematic break: If there are multiple definitions for the same reference, which takes precedence? If you want a thematic break in a list item, use a different bullet: In general, a setext heading need not be preceded or followed by a blank line.  However, it cannot interrupt a paragraph, so when a setext heading comes after a paragraph, a blank line is needed between them. In the absence of a spec, early implementers consulted `Markdown.pl` to resolve these ambiguities.  But `Markdown.pl` was quite buggy, and gave manifestly bad results in many cases, so it was not a satisfactory replacement for a spec. In the examples, the `â` character is used to represent tabs. In the following example, a continuation paragraph of a list item is indented with a tab; this has exactly the same effect as indentation with four spaces would: Indicators of block structure always take precedence over indicators of inline structure.  So, for example, the following is a list with two items, not a list with one item containing a code span: Insecure characters Introduction Is a blank line needed before a block quote or heading? Most implementations do not require the blank line.  However, this can lead to unexpected results in hard-wrapped text, and also to ambiguities in parsing (note that some implementations put the heading inside the blockquote, while others do not). (John Gruber has also spoken [in favor of requiring the blank lines](http://article.gmane.org/gmane.text.markdown.general/2146).) Is a blank line needed before an indented code block? (`Markdown.pl` requires it, but this is not mentioned in the documentation, and some implementations do not require it.) Is this one list with a thematic break in its second item, or two lists separated by a thematic break? It is required that all of the [non-whitespace characters] be the same. So, this is not a thematic break: It need not be the same length as the opening sequence: John Gruber's [canonical description of Markdown's syntax](http://daringfireball.net/projects/markdown/syntax) does not specify the syntax unambiguously.  Here are some examples of questions it does not answer: Leading and trailing [whitespace] is ignored in parsing inline content: Leaf blocks Markdown is a plain text format for writing structured documents, based on conventions for indicating formatting in email and usenet posts.  It was developed by John Gruber (with help from Aaron Swartz) and released in 2004 in the form of a [syntax description](http://daringfireball.net/projects/markdown/syntax) and a Perl script (`Markdown.pl`) for converting Markdown to HTML.  In the next decade, dozens of implementations were developed in many languages.  Some extended the original Markdown syntax with conventions for footnotes, tables, and other document elements.  Some allowed Markdown documents to be rendered in formats other than HTML.  Websites like Reddit, StackOverflow, and GitHub had millions of people using Markdown. And Markdown started to be used beyond the web, to author books, articles, slide shows, letters, and lecture notes. More than six `#` characters is not a heading: More than three characters may be used: Nor does a backslash at the end: Normally the `>` that begins a block quote may be followed optionally by a space, which is not considered part of the content.  In the following case `>` is followed by a tab, which is treated as if it were expanded into three spaces. Since one of these spaces is considered part of the delimiter, `foo` is considered to be indented six spaces inside the block quote context, so we get an indented code block starting with two spaces. Not enough characters: One to three spaces indent are allowed: One to three spaces indentation are allowed: Or this? Precedence Preliminaries Setext headings Simple examples: Simple headings: Since this document describes how Markdown is to be parsed into an abstract syntax tree, it would have made sense to use an abstract representation of the syntax tree instead of HTML.  But HTML is capable of representing the structural distinctions we need to make, and the choice of HTML for the tests makes it possible to run the tests against an implementation without writing an abstract syntax tree renderer. Spaces are allowed after the closing sequence: Spaces are allowed at the end: Spaces are allowed between the characters: Tabs Tabs in lines are not expanded to [spaces].  However, in contexts where whitespace helps to define block structure, tabs behave as if they were replaced by spaces with a tab stop of 4 characters. The AsciiDoc version is, arguably, easier to write. You don't need to worry about indentation.  But the Markdown version is much easier to read.  The nesting of list items is apparent to the eye in the source, not just in the processed document. The closing sequence must be preceded by a space: The content of the header may span more than one line: The contents are the result of parsing the headings's raw content as inlines.  The heading's raw content is formed by concatenating the lines and removing initial and final [whitespace]. The following definitions of character classes will be used in this spec: The heading content can be indented up to three spaces, and need not line up with the underlining: The heading is a level 1 heading if `=` characters are used in the [setext heading underline], and a level 2 heading if `-` characters are used.  The contents of the heading are the result of parsing the preceding lines of text as CommonMark inline content. The overriding design goal for Markdown's formatting syntax is to make it as readable as possible. The idea is that a Markdown-formatted document should be publishable as-is, as plain text, without looking like it's been marked up with tags or formatting instructions. (<http://daringfireball.net/projects/markdown/>) The point can be illustrated by comparing a sample of [AsciiDoc](http://www.methods.co.nz/asciidoc/) with an equivalent sample of Markdown.  Here is a sample of AsciiDoc from the AsciiDoc manual: The setext heading underline can be indented up to three spaces, and may have trailing spaces: The setext heading underline cannot contain internal spaces: The underlining can be any length: Thematic breaks Thematic breaks can interrupt a paragraph: Thematic breaks do not need blank lines before or after: This document attempts to specify Markdown syntax unambiguously. It contains many examples with side-by-side Markdown and HTML.  These are intended to double as conformance tests.  An accompanying script `spec_tests.py` can be used to run the tests against any Markdown program: This document is generated from a text file, `spec.txt`, written in Markdown with a small extension for the side-by-side tests. The script `tools/makespec.py` can be used to convert `spec.txt` into HTML or CommonMark (which can then be converted into other formats). This is not a heading, because the first `#` is escaped: This means that parsing can proceed in two steps:  first, the block structure of the document can be discerned; second, text lines inside paragraphs, headings, and other block constructs can be parsed for inline structure.  The second step requires information about link reference definitions that will be available only at the end of the first step.  Note that the first step requires processing lines in sequence, but the second can be parallelized, since the inline parsing of one block element does not affect the inline parsing of any other. This section describes the different kinds of leaf block that make up a Markdown document. This spec does not specify an encoding; it thinks of lines as composed of [characters] rather than bytes.  A conforming parser may be limited to a certain encoding. Thus, for example, a tab can be used instead of four spaces in an indented code block.  (Note, however, that internal tabs are passed through as literal tabs, not expanded to spaces.) Trailing spaces in the content line do not cause a line break: We can divide blocks into two types: [container blocks](@), which can contain other blocks, and [leaf blocks](@), which cannot. We can think of a document as a sequence of [blocks](@)---structural elements like paragraphs, block quotations, lists, headings, rules, and code blocks.  Some blocks (like block quotes and list items) contain other blocks; others (like headings and paragraphs) contain [inline](@) content---text, links, emphasized text, images, code spans, and so on. What are the precedence rules between block-level and inline-level structure?  For example, how should the following be parsed? What are the precedence rules for markers of emphasis and strong emphasis?  For example, how should the following be parsed? What are the precedence rules for the markers of inline structure? For example, is the following a valid link, or does the code span take precedence ? What distinguishes Markdown from many other lightweight markup syntaxes, which are often easier to write, is its readability. As Gruber writes: What is Markdown? What is the exact rule for determining when list items get wrapped in `<p>` tags?  Can a list be partially "loose" and partially "tight"?  What should we do with a list like this? When both a thematic break and a list item are possible interpretations of a line, the thematic break takes precedence: When list markers change from numbers to bullets, do we have two lists or one?  (The Markdown syntax description suggests two, but the perl scripts and many other implementations produce one.) Why is a spec needed? Wrong characters: [Unicode whitespace](@) is a sequence of one or more [Unicode whitespace characters]. [Whitespace](@) is a sequence of one or more [whitespace characters]. title: CommonMark Spec author: John MacFarlane version: 0.29 date: '2019-04-06' license: '[CC-BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/)' ... Project-Id-Version:  CommonMark
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-21 19:45+0900
PO-Revision-Date: 2019-04-21 10:52+0000
Last-Translator: Takeshi KOMIYA <i.tkomiya@gmail.com>, 2020
Language: ja
Language-Team: Japanese (https://www.transifex.com/commonmark-ja/teams/98434/ja/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 (åè: John Gruber ã«ããé¢é£ã³ã¡ã³ãã¯ [ãã¡ã](http://article.gmane.org/gmane.text.markdown.general/2554)) [ã¦ãã³ã¼ãç©ºç½æå­](@)ã¯Unicodeã®ä¸è¬ã«ãã´ãªã§ `Zs`ã«åé¡ããã¦ããã³ã¼ããã¤ã³ãã¨ã¿ã(`U+0009`)ãã­ã£ãªãã¸ãªã¿ã¼ã³(`U+000D`)ããã¥ã¼ã©ã¤ã³(`U+000A`)ãã©ã¤ã³ãã£ã¼ã(`U+000C`)ãæãã¾ãã [æå­](@)ã¯ã¦ãã³ã¼ãã®ã³ã¼ããã¤ã³ãã§ããä¸é¨ã®ã³ã¼ããã¤ã³ã(ãã¨ãã°ã¢ã¯ã»ã³ãã®çµã¿åãããªã©)ã¯ãç´æçãªæå³ã§ã®æå­ã«ã¯å¯¾å¿ãã¦ãã¾ããããæ¬ä»æ§ã§ã¯ãã¹ã¦ã®ã³ã¼ããã¤ã³ãã¯æå­ã¨ãã¦æ±ããã¾ãã [è¡æ«](@)ã¯ãã¥ã¼ã©ã¤ã³(`U+000A`)ããã¥ã¼ã©ã¤ã³ã®ç´å¾ä»¥å¤ã®ã­ã£ãªãã¸ãªã¿ã¼ã³(`U+000D`)ãã­ã£ãªãã¸ãªã¿ã¼ã³ã«ç¶ããã¥ã¼ã©ã¤ã³ãæãã¾ãã [è¡](@)ã¯ãã¥ã¼ã©ã¤ã³(`U+000A`)ãããã¯ã­ã£ãªãã¸ãªã¿ã¼ã³(`U+000D`)ä»¥å¤ã®[æå­]ã®0åä»¥ä¸ã®ã·ã¼ã±ã³ã¹ã§ããã®å¾ã«[è¡æ«]ãããã¯ãã¡ã¤ã«ã®æ«å°¾ãç¶ããã®ãæãã¾ãã [éç©ºç½æå­](@)ã¯[ç©ºç½æå­]ä»¥å¤ã®ä»»æã®æå­ãæãã¾ãã [è¨å·æå­](@)ã¯[ASCIIè¨å·æå­]ãããã¯Unicodeã®ä¸è¬ã«ãã´ãªã§ `Pc`, `Pd`, `Pe`, `Pf`, `Pi`, `Po`, or `Ps` ã«åé¡ããã¦ããã³ã¼ããã¤ã³ããæãã¾ãã [setextè¦åºãä¸ç·](@)ã¯`=`ã®ã·ã¼ã±ã³ã¹ãããã¯`-`ã®ã·ã¼ã±ã³ã¹ã§ãã3ã¹ãã¼ã¹ã¾ã§ã®ã¤ã³ãã³ãã¨æ«å°¾ã®ã¹ãã¼ã¹ãè¨±å®¹ãã¾ãããã`-`ã1ã¤ã ãã®å ´åã[setextè¦åºãä¸ç·]ã§ã¯ãªãç©ºã®ç®æ¡æ¸ãã¨ãã¦è§£éããã¾ãã [setextè¦åºã](@)ã¯1ã¤ä»¥ä¸ã®[éç©ºç½æå­]ãå«ã¿ããªããã¤4ã¹ãã¼ã¹ä»¥ä¸ã®ã¤ã³ãã³ããæããªã1è¡ä»¥ä¸ã®ãã­ã¹ãã¨ãããã«ç¶ã[setextè¦åºãä¸ç·]ããæ§æããã¾ãããã­ã¹ãé¨åã¯setextè¦åºãä¸ç·ããªãå ´åã«ãæ®µè½ã¨ãã¦è§£éããããããªãã®ã§ãªããã°ãªãã¾ãããã¤ã¾ãã[ã³ã¼ããã§ã³ã¹]ã[ATXè¦åºã]ã[å¼ç¨ãã­ãã¯]ã[ä¸»é¡åå²]ã[ç®æ¡æ¸ã]ã[HTMLãã­ãã¯]ã¨è§£éã§ãã¾ããã [ã¹ãã¼ã¹](@)ã¯`U+0020`ãæãã¾ãã [ç©ºç½æå­](@)ã¯ã¹ãã¼ã¹(`U+0020`)ãã¿ã(`U+0009`)ããã¥ã¼ã©ã¤ã³(`U+000A`)ãåç´ã¿ã(`U+000B`)ãã©ã¤ã³ãã£ã¼ã(`U+000C`)ãã­ã£ãªãã¸ãªã¿ã¼ã³(`U+000D`)ãæãã¾ãã çµäºã·ã¼ã±ã³ã¹ã¨ãã¦æ«å°¾ã«`#`æå­ãã¤ãã¦ãæ§ãã¾ããã 0-3åã®ã¹ãã¼ã¹ã§ã¤ã³ãã³ãããã3ã¤ä»¥ä¸ã® `-`, `_` ãããã¯ `*` ã®ã·ã¼ã±ã³ã¹ã¯[ä¸»é¡åå²](@)(thematic break)ãå½¢æãã¾ããä¸»é¡åå²ã®å¾ã«ã¯ä»»æã®æ°ã®ã¹ãã¼ã¹ãã¿ããç¶ãã¦ãæ§ãã¾ããã æå­åãå«ã¾ãªãè¡ãç©ºç½æå­(`U+0020`)ãã¿ãæå­(`U+0009`)ã®ã¿ãå«ãè¡ã[ç©ºè¡](@)ã¨å¼ã³ã¾ãã `#`ã®å¾ã«[ç©ºç½]ä»¥å¤ã®æå­ãããå ´åã`#`ã¯çµäºã·ã¼ã±ã³ã¹ã§ã¯ãªãè¦åºãã³ã³ãã³ãã®ä¸é¨ã¨ã¿ãªããã¾ãã ATXè¦åºã ATXè¦åºãã®ã³ã³ãã³ãã¯ç©ºã§ãæ§ãã¾ããã ATXè¦åºãã¯å¨å²ã®ã³ã³ãã³ãã¨ç©ºè¡ã§åºåããã¦ããå¿è¦ã¯ããã¾ãããã¾ããATXè¦åºãã¯æ®µè½ãä¸­æ­ãããã¨ãã§ãã¾ãã ãã®ææ¸ã«ã¤ãã¦ [ASCIIè¨å·æå­](@) ã¯ `!`, `"`, `#`, `$`, `%`, `&`, `'`, `(`, `)`, `*`, `+`, `,`, `-`, `.`, `/` (U+0021â2F), `:`, `;`, `<`, `=`, `>`, `?`, `@` (U+003Aâ0040), `[`, `\`, `]`, `^`, `_`, `` ` `` (U+005Bâ0060), `{`, `|`, `}`, or `~` (U+007Bâ007E) ãæãã¾ãã [ATXè¦åºã](@)ã¯1-6åã®ã¨ã¹ã±ã¼ãããã¦ããªã`#`æå­ãããªãéå§ã·ã¼ã±ã³ã¹ãã¤ã³ã©ã¤ã³ã³ã³ãã³ãã¨ãã¦è§£æå¯è½ãªæå­åãä»»æã®é·ãã®ã¨ã¹ã±ã¼ãããã¦ããªã`#`æå­ããæ§æããããªãã·ã§ã³ã®éå§ã·ã¼ã±ã³ã¹ããæ§æããã¾ããéå§ã·ã¼ã±ã³ã¹ã®å¾ã«ã¯[ã¹ãã¼ã¹]ãããã¯è¡æ«ãç¶ããªãã¦ã¯ãªãã¾ãããçµäºã·ã¼ã±ã³ã¹ã®åã«ã¯[ã¹ãã¼ã¹]ãæãå¿è¦ããããçµäºã·ã¼ã±ã³ã¹ã®å¾ã«ã¯ã¹ãã¼ã¹ãç¶ãããã¨ãã§ãã¾ããã¾ããéå§ã·ã¼ã±ã³ã¹ã¯0-3ã¹ãã¼ã¹ã§ã¤ã³ãã³ãå¯è½ã§ããè¦åºãã³ã³ãã³ããã¤ã³ã©ã¤ã³ã³ã³ãã³ãã¨ãã¦è§£æããåã«ãåé ­ã¨æ«å°¾ã®ã¹ãã¼ã¹ã¯åé¤ããã¾ããè¦åºãã¬ãã«ã¯éå§ã·ã¼ã±ã³ã¹ã®`#`ã®æ°ã¨åãã§ãã ããã¦ããã¡ãã¯åãåå®¹ãMarkdownã§è¨è¿°ãããã®ã§ã: ä»»æã®[æå­å]ã®ä¸¦ã³ã¯æå¹ãªCommonMarkãã­ã¥ã¡ã³ãã§ãã è¦åºããç©ºã§ãªãå ´åã`#`æå­ã¨è¦åºãã®ã³ã³ãã³ãã®éã«ã¯ãããªãã¨ã1ã¤ã®ã¹ãã¼ã¹ãå¿è¦ã§ããå¤ãã®å®è£ã§ã¯ã¹ãã¼ã¹ãå¿é ã§ã¯ããã¾ããããããã[ãªãªã¸ãã«ã®ATXå®è£](http://www.aaronsw.com/2002/atx/atx.py)ã§ã¯ã¹ãã¼ã¹ã¯å¿é ã¨ããã¦ããããã®ä»æ§ã¯æ¬¡ã®ãããªæå­åãè¦åºãã¨ã¿ãªããªãããæç¨ã§ãã ããã¯ã¹ã©ãã·ã¥ã§ã¨ã¹ã±ã¼ãããã`#`æå­ã¯çµäºã·ã¼ã±ã³ã¹ã®ä¸é¨ã¨ã¿ãªããã¾ããã ãããã¦ãæç¢ºãªä»æ§ãå­å¨ããªããã¨ã«ãã£ã¦å®è£ã¯å¤§ããåå²ãã¾ããããã®çµæãããã·ã¹ãã (ãã¨ãã° GitHub wiki)ã§ã¬ã³ããªã³ã°ããããã­ã¥ã¡ã³ãã¨å¥ã®ã·ã¹ãã (ãã¨ãã° pandoc ã§ docbook ã«å¤æããå ´å)ã§ã¬ã³ããªã³ã°ããããã®ãç°ãªãã®ãããè¦ããã¾ããæ®å¿µãªãã¨ã«ãMarkdown ã¯æ§æã¨ã©ã¼ãçºçãããªããããããããå·®ç°ã¯ããã«ã¯çºè¦ããã¾ãããã¨ãã»ã¨ãã©ã§ãã ãã­ãã¯ã¨ã¤ã³ã©ã¤ã³ ãªã³ã¯åç§ã¯ãã­ãã¯å¼ç¨ãç®æ¡æ¸ãã«å«ãããã¨ã¯ã§ããã®ã§ããããã ç©ºã®ç®æ¡æ¸ãè¦ç´ ã¯èªããããã¹ãã§ããããã ç®æ¡æ¸ãã«è¦åºããå«ãããã¨ã¯ã§ããã®ã§ããããã (`Markdown.pl` ã§ã¯å«ãããã¨ã¯ã§ãã¾ããããããããã­ãã¯å¼ç¨ã«è¦åºããå«ãããã¨ã¯ã§ãã¾ãã) ãªã¹ãè¨å·ã¯ã¤ã³ãã³ãã§ããã®ã§ãããããã¾ããçªå·ä»ããªã¹ãã®çªå·ã¯å³å¯ãã§ããã®ã§ããããã æå­ã¨è¡ ã³ã³ãããã­ãã¯ã¨ãªã¼ããã­ãã¯ è¦åºãã®ã³ã³ãã³ãã¯ã¤ã³ã©ã¤ã³ã¨ãã¦è§£éããã¾ãã ã»ã­ã¥ãªãã£ä¸ã®çç±ã«ãããã¦ãã³ã¼ãæå­ `U+0000` ã¯ REPLACEMENT CHARACTER (`U+FFFD`)ã«å¤æããã¾ãã 4ã¤ä»¥ä¸ã®ã¹ãã¼ã¹ã§ã¤ã³ãã³ãããå ´åã¯è¦åºãã¨ã¿ãªããã¾ããã 4ã¤ä»¥ä¸ã®ã¹ãã¼ã¹ã§ã¤ã³ãã³ãããå ´åã¯è¦åºãã¨ã¿ãªããã¾ããã ãããã4ã¹ãã¼ã¹ã¯è¨±å¯ããã¾ããã 4ã¤ä»¥ä¸ã®ã¹ãã¼ã¹ã§ã¤ã³ãã³ãããå ´åã¯è¦åºãã¨ã¿ãªããã¾ããã ãµããªã¹ããä½ãã«ã¯ããã¤ã¤ã³ãã³ãããã®ããä»æ§ã§ã¯æ®µè½ãç¶ç¶ããã«ã¯4ã¹ãã¼ã¹åã®ã¤ã³ãã³ããå¿è¦ã ã¨èª¬æããã¦ãã¾ããããµããªã¹ãã«ã¤ãã¦ã¯æç¤ºçã§ã¯ããã¾ãããæ®µè½ã¨åæ§ã«ããµããªã¹ãã4ã¹ãã¼ã¹åã®ã¤ã³ãã³ããå¿è¦ã¨èããã®ãèªç¶ã§ããã`Markdown.pl` ã¯ãã®ããã«å®è£ããã¦ãã¾ããããã®åé¡ã¯ãMarkdownå¦çç³»ã«ãã£ã¦åä½ã«å·®ç°ããããããå®éã®ãã­ã¥ã¡ã³ããå¦çããéã«ã¦ã¼ã¶ãé©ããã¨ã«ãªãã¾ãã(åè [John Gruber ã®ã³ã¡ã³ã](http://article.gmane.org/gmane.text.markdown.general/1997)) ããããããä»¥å¤ã®æå­ã¯ä½¿ç¨ã§ãã¾ããã ä¸»é¡åå²ã¨ãªãæ¡ä»¶ãæºããããã·ã¥ã®è¡ã [setextè¦åºã]ã®ä¸ç·ã¨ãã¦ãè§£éã§ããå ´åã[setextè¦åºã]ã¨ãã¦ã®è§£éãåªåããã¾ãããããã£ã¦ãä»¥ä¸ã®ä¾ã¯setextè¦åºãã§ãããæ®µè½ã¨ä¸»é¡åå²ã¨ã¯ã¿ãªããã¾ããã åãåç§ã«å¯¾ãã¦è¤æ°ã®å®ç¾©ãããå ´åãã©ã¡ããåªåãããã®ã§ããããã ç®æ¡æ¸ãã®ä¸­ã«ä¸»é¡åå²ãéç½®ãããå ´åãç®æ¡æ¸ãã¨ã¯ç°ãªãè¦ç´ ãä½¿ç¨ãã¦ãã ããã ä¸è¬ã«setextè¦åºãã®åå¾ã«ç©ºè¡ãç½®ãå¿è¦ã¯ããã¾ãããããããsetextè¦åºãã¯æ®µè½ãä¸­æ­ãããã¨ãã§ããªããããæ®µè½ã®å¾ã«setextè¦åºããç½®ãå ´åã«ã¯ç©ºè¡ãæãå¿è¦ãããã¾ãã ä»æ§ãå­å¨ããªããããåæã®å®è£èã¯ããããããã¾ãããè§£æ±ºããããã« `Markdown.pl` ãåèã«ãã¾ããããããã `Markdown.pl` ã¯ã¨ã¦ããã°ãå¤ããã¾ãå¤ãã®å ´åã«æªãçµæãããããããããä»æ§ã®ä»£ããã«ã¯ãªãã¾ããã§ããã æ¬ãã­ã¥ã¡ã³ãã®ãµã³ãã«ã§ã¯ãã¿ãæå­ãè¡¨ç¾ããã®ã«`â`ãç¨ãã¾ãã æ¬¡ã®ä¾ã§ã¯ãç®æ¡æ¸ãåã®ç¶ç¶æ®µè½ãã¿ãã§ã¤ã³ãã³ãããã¦ãã¾ããããã¯4ã¤ã®ã¹ãã¼ã¹ã§ã¤ã³ãã³ããããå ´åã¨åãå¹æãããã¾ãã ãã­ãã¯æ§é ã®ã¤ã³ã¸ã±ã¼ã¿ã¯å¸¸ã«ã¤ã³ã©ã¤ã³æ§é ã®ã¤ã³ã¸ã±ã¼ã¿ãããåªåããã¾ãããã®ãããæ¬¡ã®ä¾ã¯ã³ã¼ãã¹ãã³ãå«ã1é ç®ã®ç®æ¡æ¸ãã§ã¯ãªãã2é ç®ã®ç®æ¡æ¸ãã¨æ±ããã¾ãã å®å¨ã§ãªãæå­ ã¤ã³ãã­ãã¯ã·ã§ã³ å¼ç¨ãã­ãã¯ãè¦åºãã®ç´åã«ç©ºè¡ãå¿è¦ãã©ãããå¤ãã®å¦çç³»ã§ã¯ç©ºè¡ãå¿è¦ã¨ãã¾ããããããããã®åä½ã¯ãã¼ãã©ããããããã­ã¹ãã«ããã¦äºæãã¬çµæããããããè§£æã«ãããææ§ãã«ç¹ããå¯è½æ§ãããã¾ã(ããå¦çç³»ã¯è¦åºããå¼ç¨ãã­ãã¯ã®åå´ã«ç½®ãããå¥ã®å¦çç³»ã§ã¯ããã§ã¯ãªã)ã(John Gruberã [ç©ºè¡ãå¿è¦ã¨ãããã¨ã«è³æãã¾ãã](http://article.gmane.org/gmane.text.markdown.general/2146)) ã¤ã³ãã³ãã³ã¼ããã­ãã¯ã®ç´åã«ç©ºè¡ãå¿è¦ãã©ããã(`Markdown.pl` ã¯ç©ºè¡ãå¿è¦ã¨ãã¾ãããä»æ§ã«ã¯è¨åãããã¾ãããã¾ããããã¤ãã®å¦çç³»ã¯ç©ºè¡ãå¿è¦ã¨ãã¾ããã) æ¬¡ã®ä¾ã¯äºçªç®ã®ãªã¹ãè¦ç´ ã«æ®µè½åºåãããã¤ãªã¹ãã¨è§£éãããã®ã§ãããããããã¨ãæ®µè½åºåãã§åå²ããããµãã¤ã®ãªã¹ãã¨è§£éãããã®ã§ããããã è¡åã®[éç©ºç½æå­]ã¯ãã¹ã¦åãæå­ã§ããå¿è¦ãããã¾ãããã®ãããä»¥ä¸ã¯ä¸»é¡åå²ã¨ã¯ã¿ãªããã¾ããã åé ­ã¨æ«å°¾ã®`#`ã®æ°ã¯ä¸è´ããªãã¦ãæ§ãã¾ããã John Gruberã®[Markdownã®ææ³ã®æ¨æºçãªèª¬æ](http://daringfireball.net/projects/markdown/syntax)ã¯ããã®ææ³ãæç¢ºã«è¦å®ãã¦ãã¾ãããä»¥ä¸ã«ãã®çåç¹ãæãã¾ãã åé ­ã¨æ«å°¾ã®[ç©ºç½]ã¯ã¤ã³ã©ã¤ã³è¦ç´ ã®è§£éæã«ç¡è¦ããã¾ãã ãªã¼ããã­ãã¯ Markdownã¯ãé»å­ã¡ã¼ã«ããã³ usenet ã¸ã®æç¨¿ãªã©ã§ä½¿ããã¦ããæ¸å¼ã®æ£ç¿ããã¼ã¹ã«ãããæ§é åææ¸ãè¨è¿°ããããã®ãã­ã¹ãå½¢å¼ã§ããMarkdownã¯John Gruberã«ãã£ã¦(Aaron Swartzã®æå©ããåããªãã)ã2004å¹´ã« [ææ³å®ç¾©](http://daringfireball.net/projects/markdown/syntax)ã¨HTMLã¸ã®å¤æã¹ã¯ãªãã(`Markdown.pl`)ã¨ãã¦ãªãªã¼ã¹ããã¾ããã
ãã®å¾ã®10å¹´éã§ãå¤ãã®ãã­ã°ã©ãã³ã°è¨èªã§Markdownã®å¦çç³»ãæ°å¤ãéçºããã¾ãããããã¤ãã®å¦çç³»ã§ã¯ããªãªã¸ãã«ã®Markdownææ³ã«èæ³¨ããã¼ãã«ãªã©ã®è¨æ³ãè¿½å ããã¾ããã ã¾ããããã¤ãã®å¦çç³»ã§ã¯ãMarkdownææ¸ããHTMLä»¥å¤ã®å½¢å¼ã¸ã®å¤æã«å¯¾å¿ãã¾ããã RedditãStackOverflowãGitHubãªã©ã®ã¦ã§ããµã¤ãã§ã¯ãMarkdownã¯æ°ç¾ä¸ã®ã¦ã¼ã¶ã«ä½¿ããã¦ãã¾ããããã¦ãMarkdownã¯ã¦ã§ãã ãã§ãªããæ¸ç±ãè¨äºãã¹ã©ã¤ããæç´ãè¬ç¾©ãã¼ããªã©ã®ãã¾ãã¾ãªç¨éã«ä½¿ããã¯ããã¦ãã¾ãã 7ã¤ä»¥ä¸ã®`#`è¨å·ã¯è¦åºãã«ãªãã¾ããã 3ã¤ä»¥ä¸ã®è¨å·ãæ¸ãã¦ãããã§ãã è¡æ«ã«ããã¯ã¹ã©ãã·ã¥ãããã¦ãæ¹è¡ããã¾ããã éå¸¸ããã­ãã¯å¼ç¨ãéå§ãã`>`ã®å¾ã«ã¯ãªãã·ã§ã³ã§ã¹ãã¼ã¹ãç¶ãããã¨ãã§ãã¾ããããã®å ´åã¯ãã®ã¹ãã¼ã¹ã¯ã³ã³ãã³ãã®ä¸é¨ã¨ã¯ã¿ãªããã¾ãããä»¥ä¸ã®ããã«`>`ã®å¾ã«ã¿ããç¶ããå ´åããã®ã¿ãã¯3ã¤ã®ã¹ãã¼ã¹ã¨ãã¦æ±ããã¾ãããããã®ã¹ãã¼ã¹ã®1ã¤ã¯åºåãæå­åºåãæå­ã®ä¸é¨ã¨ã¿ãªããããããæå­å`foo`ã¯ãã­ãã¯å¼ç¨åã§6ã¤ã®ã¹ãã¼ã¹ã§ã¤ã³ãã³ãããã¦ãããã®ã¨è§£éããã2ã¤ã®ã¹ãã¼ã¹ã§å§ã¾ãã¤ã³ãã³ãã³ã¼ããã­ãã¯ã«å¤æããã¾ãã æå­æ°ãè¶³ããªãå ´å 3ã¹ãã¼ã¹ã¾ã§ã®ã¤ã³ãã³ãã¯è¨±å¯ããã¾ãã 1-3æå­ã®ã¤ã³ãã³ãã¯è¨±å®¹ããã¾ãã ã¾ããæ¬¡ã®ãããªãªã¹ãã¯ã©ãã§ããããã åªåé ä½ ã¾ããã Setextè¦åºã ã·ã³ãã«ãªè¦åºãã®ä¾ã§ãã ã·ã³ãã«ãªè¦åºãã®ä¾ã§ãã ãã®ãã­ã¥ã¡ã³ãã§ã¯Markdownãæ½è±¡æ§ææ¨ã«å¤æããæ¹æ³ãèª¬æãã¦ãããããHTMLã®ãããã«æ§ææ¨ã®æ½è±¡è¡¨ç¾ãå©ç¨ããã®ãçã«ããªã£ã¦ãã¾ããããããHTMLã¯æ§é ä¸ã®éããè¡¨ç¾ã§ããã¾ããã¹ãç¨ã«æ½è±¡æ§ææ¨ã®ã¬ã³ãã©ã¼ãæ¸ããã¨ãªããã¹ããå®è¡ã§ãããã¨ãããHTML ãæ¡ç¨ãã¦ãã¾ãã çµäºã·ã¼ã±ã³ã¹ã®å¾ã«ã¹ãã¼ã¹ãå¥ãã¦ãæ§ãã¾ããã è¡æ«ã«ã¹ãã¼ã¹ãæ¸ããã¨ãã§ãã¾ãã è¨å·ã®éã«ã¹ãã¼ã¹ãæ¸ããã¨ãã§ãã¾ãã ã¿ã è¡åã®ã¿ãã¯[ã¹ãã¼ã¹]ã«ã¯å±éããã¾ããããã ããç©ºç½ããã­ãã¯æ§é ã®å®ç¾©ã«å½¹ç«ã¤å ´åã¯ãã¿ãã¯4æå­ã®ã¿ãã¹ãããã§å±éãããã¹ãã¼ã¹ã¨ãã¦æ±ããã¾ãã AsciiDocãã¼ã¸ã§ã³ã¯ãééããªãæ¸ãã®ãç°¡åã§ããã¤ã³ãã³ãã«ã¤ãã¦æ°ã«ããªãã¦æ¸ã¿ã¾ããä¸æ¹ãMarkdownãã¼ã¸ã§ã³ã¯ã¨ã¦ãèª­ã¿ããããªã£ã¦ãã¾ããå¤æ®µãªã¹ãã¯ãå¤æããããã­ã¥ã¡ã³ãã ãã§ãªããã½ã¼ã¹ã®ã¾ã¾ã§ãèª­ã¿ãããã§ãã çµäºã·ã¼ã±ã³ã¹ã®åã«ã¯ã¹ãã¼ã¹ãå¿è¦ã§ãã è¦åºãæã¯è¤æ°è¡ã«ãããå ´åãããã¾ãã è¦åºãæã¯è¦åºãã®çãã­ã¹ããã¤ã³ã©ã¤ã³ã¨ãã¦è§£éãããã®ã§ããè¦åºãã®çãã­ã¹ãã¯åè¡ãé£çµããåé ­ã¨æ«å°¾ã®[ç©ºç½]ãé¤å»ãããã®ã§ãã æ¬ä»æ§ã§ã¯ä»¥ä¸ã®æå­ã¯ã©ã¹ãå©ç¨ãã¾ãã è¦åºãæã¯3ã¤ã¾ã§ã¤ã³ãã³ãã§ãã¾ããã¾ããä¸ç·ã«åãããå¿è¦ã¯ããã¾ããã è¦åºãã®ã¬ãã«ã¯[setextè¦åºãä¸ç·]ã«å©ç¨ããã¦ããæå­ã®ç¨®é¡ã§æ±ºã¾ãã¾ãã`=`ãä½¿ç¨ããã¦ããå ´åã¯ã¬ãã«1ã`-`ãä½¿ç¨ããã¦ããå ´åã¯ã¬ãã«2ã®è¦åºãã¨ãã¦ããããæ±ããã¾ããã¾ããè¦åºãæã«ã¯ãã­ã¹ãé¨ãã¤ã³ã©ã¤ã³ã³ã³ãã³ãã¨ãã¦è§£éãããã®ãé©ç¨ããã¾ãã Markdownè¨æ³ã®ãã£ã¨ãéè¦ãªè¨­è¨ç®æ¨ã¯ããã­ã¥ã¡ã³ããã§ãããããèª­ã¿ããããããã¨ã§ãããã®ãããMarkdownå½¢å¼ã®ãã­ã¥ã¡ã³ãã¯ã¿ã°ãæ¸ç±ã®æå®ãªã©ã§ãã¼ã¯ã¢ããããã¦ããããã«è¦ããªãã¦ãããã¬ã¼ã³ãã­ã¹ãã¨ãã¦ãã®ã¾ã¾å¬éå¯è½ã§ãããã¨ãç®æãã¦ãã¾ãã ï¼<http://daringfireball.net/projects/markdown/>ï¼ ãã®ç¹ã¯ [AsciiDoc](http://www.methods.co.nz/asciidoc/)ã®ãã­ã¥ã¡ã³ãã¨Markdownã®ãã­ã¥ã¡ã³ããæ¯è¼ãããã¨ã§èª¬æã§ãã¾ããä»¥ä¸ã¯AsciiDocã®ããã¥ã¢ã«ã«æ²è¼ããã¦ããAsciiDocã®ãµã³ãã«ã§ã: setextè¦åºãä¸ç·ã¯3ã¤ã¾ã§ã¤ã³ãã³ãã§ãã¾ããã¾ããæ«å°¾ã®ã¹ãã¼ã¹ãè¨±å®¹ãã¾ãã setextè¦åºãä¸ç·ã®éä¸­ã«ã¹ãã¼ã¹ãå«ãããã¨ã¯ã§ãã¾ããã setextè¦åºãä¸ç·ã¯ä»»æã®é·ããã¨ãã¾ãã ä¸»é¡åå² ä¸»é¡åå²ã¯æ®µè½ãä¸­æ­ãããã¨ãã§ãã¾ãã ä¸»é¡åå²ã®åå¾ã«ç©ºç½ã¯å¿è¦ããã¾ããã ãã®ãã­ã¥ã¡ã³ãã§ã¯Markdownã®ææ³ãæç¢ºã«è¦å®ãããã¨ãã¦ãã¾ããã¾ãããã®ãã­ã¥ã¡ã³ãã«ã¯Markdownã®ä¾ã¨HTMLã¸ã®å¤æçµæãä¸¦ã¹ã¦ãã¾ãããããã¯é©åãã¹ããå¼ã­ããã¨ãç®çã¨ãã¦ãã¾ããä»å±ãã `spec_test.py` ãå©ç¨ããã¨ãä»»æã®Markdownãã­ã°ã©ã ã«å¯¾ãã¦ãã¹ããå®è¡ã§ãã¾ãã ãã®ãã­ã¥ã¡ã³ãã¯`spec.txt`ã¨ããMarkdownãã¡ã¤ã«ããçæããã¦ãã¾ããå¤æã¹ã¯ãªããã«ã¯ãµã¤ããã¤ãµã¤ããã¹ãç¨ã®æ¡å¼µãå«ã¾ãã¦ãã¾ãã`tools/makespec.py`ã¯`spec.txt`ãHTMLã(ä»ã®å½¢å¼ã«å¤æå¯è½ãª)CommonMarkã«å¤æã§ãã¾ãã åé ­ã® `#` ãã¨ã¹ã±ã¼ãããã¦ãããããè¦åºãã«ã¯ãªãã¾ãã: ããã¯è§£æã2ã¤ã®ã¹ãããã§é²ãããããã¨ãæå³ãã¾ããæåã®ã¹ãããã§ã¯ãã­ã¥ã¡ã³ãã®ãã­ãã¯æ§é ãè­å¥ããæ¬¡ã®ã¹ãããã§ã¯æ®µè½ãè¦åºããªã©ã®ãã­ãã¯è¦ç´ åã®ãã­ã¹ãããã¤ã³ã©ã¤ã³è¦ç´ ãè§£æãã¾ãã2çªç®ã®ã¹ãããã§ã¯ãæåã®ã¹ãããã®æå¾ã«å¾ããããªã³ã¯åç§å®ç¾©ã®æå ±ãå¿è¦ã¨ãã¾ãããªããæåã®ã¹ãããã¯åè¡ãé çªã«å¦çãã¦ããå¿è¦ãããã¾ãããåãã­ãã¯è¦ç´ ã®ã¤ã³ã©ã¤ã³è§£æã¯ãäºãã«å½±é¿ãä¸ããªãããã2çªç®ã®ã¹ãããã¯ä¸¦ååã§ãã¾ãã æ¬ç« ã§ã¯Markdownãã­ã¥ã¡ã³ããæ§æãããã¾ãã¾ãªç¨®é¡ã®ãªã¼ããã­ãã¯ã«ã¤ãã¦èª¬æãã¾ãã æ¬ä»æ§ã§ã¯æå­ã¨ã³ã³ã¼ãã£ã³ã°ã«ã¤ãã¦ã¯æå®ãã¾ãããè¡ã¯ãã¤ãã§ã¯ãªã[æå­]ã§æ§æããã¦ããã¨ã¿ãªããã¾ããé©åãããã¼ãµã¼ã¯å¯¾å¿ããæå­ã¨ã³ã³ã¼ãã£ã³ã°ãéå®ãã¦ãããã ãããã£ã¦ãã¤ã³ãã³ãã³ã¼ããã­ãã¯ã§4ã¤ã®ã¹ãã¼ã¹ã®ä»£ããã«ã¿ããå©ç¨ã§ãã¾ãã(ãã ããè¡åã®ã¿ãã¯ã¹ãã¼ã¹ã«å±éãããªããã¨ã«æ³¨æãã¦ãã ããã) è¦åºãæã®æ«å°¾ã«ã¹ãã¼ã¹ãå¥ãã¦ãæ¹è¡ããã¾ããã ãã­ãã¯ã¯ä»ã®ãã­ãã¯ãå«ããã¨ã®ã§ãã[ã³ã³ãããã­ãã¯](@)ã¨ããã­ãã¯ãå«ããã¨ã®ã§ããªã[ãªã¼ããã­ãã¯](@)ã®ãµãã¤ã«åé¡ã§ãã¾ãã ãã­ã¥ã¡ã³ãã¯[ãã­ãã¯](@)ã®ã·ã¼ã±ã³ã¹ã¨èãããã¨ãã§ãã¾ããããã§ãããã­ãã¯ã¨ã¯æ®µè½ããã­ãã¯å¼ç¨ããªã¹ããè¦åºããç½«ç·ãã³ã¼ããã­ãã¯ãªã©ã®æ§é è¦ç´ ãæãã¾ãããã­ãã¯å¼ç¨ããªã¹ããªã©ã®ãã­ãã¯ã¯ä»ã®ãã­ãã¯è¦ç´ ãå«ãããã¨ãã§ãã¾ããã¾ããè¦åºããæ®µè½ãªã©ã®ãã­ãã¯ã¯[ã¤ã³ã©ã¤ã³](@)ã³ã³ãã³ããå«ãããã¨ãã§ãã¾ãã
ã¤ã³ã©ã¤ã³ã«ã¯ãã­ã¹ãããªã³ã¯ãå¼·èª¿ããããã­ã¹ããç»åãã³ã¼ãã¹ãã³ãªã©ãããã¾ãã ãã­ãã¯ã¬ãã«ã®æ§é ã¨ã¤ã³ã©ã¤ã³ã¬ãã«ã®æ§é ã«ãããåªåé ä½ã¯ã©ãã§ããããããã¨ãã°ãä»¥ä¸ã®ä¾ã¯ã©ã®ããã«è§£éãããã¹ãã§ããããã å¼·èª¿ããã³å¼·ãå¼·èª¿ã®ãã¼ã«ã¼ã®åªåé ä½ã¯ã©ãã§ããããããã¨ãã°ãä»¥ä¸ã®ä¾ã¯ã©ã®ããã«è§£éãããã¹ãã§ããããã ã¤ã³ã©ã¤ã³æ§é ã®ãã¼ã«ã¼ã®åªåé ä½ã¯ã©ãã§ããããããã¨ãã°ãä»¥ä¸ã®ä¾ã¯æå¹ãªãªã³ã¯ã§ãããããããã¨ãã³ã¼ãã¹ãã³ãåªåãããã¹ãã§ããããã Markdownã¨ä»ã®å¤ãã®è»½éãã¼ã¯ã¢ããè¨èªã¨ã®éãã¯ãèª­ã¿ãããã«ããã¾ãããã®ç¹ã«ã¤ãã¦ãGruberã¯æ¬¡ã®ããã«ã³ã¡ã³ããã¦ãã¾ã: What is Markdown? ãªã¹ãã®é ç®ã `<p>` ã¿ã°ã§å²ããããã©ãããã©ã®ããã«æ±ºã¾ãã®ãããªã¹ãã®ä¸é¨ã ãããããã¦(loose)ãä¸é¨ããã¤ããã(tight)ãã¨ã¯ã§ããã®ããæ¬¡ã®ãããªãªã¹ããã©ã®ããã«æ±ãã°ããã®ãã ããè¡ãä¸»é¡åå²ã¨ãç®æ¡æ¸ãã¨ãè§£éã§ããå ´åãä¸»é¡åå²ã®è§£éãåªåããã¾ãã ç®æ¡æ¸ãã®ãã¼ã«ã¼ããªã¹ãã®éä¸­ã§çªå·ãããã¬ããã«å¤ãã£ãå ´åãããã¤ã®ç®æ¡æ¸ãã¨ãã¦è§£éãã¹ãã§ãããããã²ã¨ã¤ï¼ããã¨ããµãã¤ï¼(Markdown ã®ææ³ã§ã¯ãµãã¤ã¨å®ç¾©ããã¦ãã¾ãããMarkdown.pl ãå¤ãã®å®è£ã¯ã²ã¨ã¤ã®ãªã¹ãã¨è§£éãã¾ã) ãªãä»æ§ãå¿è¦ãªã®ã? ä¸é©åãªæå­ [ã¦ãã³ã¼ãç©ºç½](@)ã¯1æå­ä»¥ä¸ã®[ã¦ãã³ã¼ãç©ºç½æå­]ã®ã·ã¼ã±ã³ã¹ã§ãã [ç©ºç½](@)ã¯1æå­ä»¥ä¸ã®[ç©ºç½æå­]ã®ã·ã¼ã±ã³ã¹ã§ãã ã¿ã¤ãã«: CommonMark Spec èè: John MacFarlane ãã¼ã¸ã§ã³: 0.29 æ¥ä»: '2019-04-06' ã©ã¤ã»ã³ã¹: '[CC-BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/)' ... 