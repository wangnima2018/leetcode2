<h3>题意<h3>
<p>找到两个list的intersection node，并且返回<p>

<h3>解题<h3>
<p>找到两个list的长度，lenA，lenB，如果哪个list长，就先让那个list的节点node往前走n=abs(lenA-lenB)步，
然后两个list node同时往前走，看headA== headB 的时候，返回headA
<p>

```python
class Solution(object):
    def getIntersectionNode(self, headA, headB):
        # Write your code here
        
        lenA = 1
        lenB = 1
        
        nodeA = headA
        nodeB = headB
        
        while nodeA != None:
            nodeA = nodeA.next
            lenA += 1
            
        while nodeB != None:
            nodeB = nodeB.next
            lenB += 1
            
        diff = abs(lenA-lenB)
        if lenA > lenB:
            for i in range(diff):
                headA = headA.next
        else:
            for i in range(diff):
                headB = headB.next
        
        while headA is not None and headB is not None:
            if headA == headB:
                return headA
            else:
                headA = headA.next
                headB = headB.next
        
        return None

```
