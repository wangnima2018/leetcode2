<h3>题意<h3>
<p>The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: 
(you may want to display this pattern in a fixed font for better legibility)
convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".<p>




<h3>解题<h3>
<p>把一个string用zigzag的形式输出，输出完了，按照行进行扫描，返回结果。
使用list of string，对每行进行存储，注意什么时候进行从上到下的扫描，什么时候进行反方向的扫描<p>


```python
class Solution:
    # @return a string
    def convert(self, s, nRows):
        if nRows==1: return s
        tmp=['' for i in range(nRows)]
        index=-1; step=1
        for i in range(len(s)):
            index+=step
            if index==nRows:
                index-=2; step=-1
            elif index==-1:
                index=1; step=1
            tmp[index]+=s[i]
        return ''.join(tmp)

```
