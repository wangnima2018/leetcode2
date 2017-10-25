
<h3>题意<h3>
<p>
Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

    1
   / \
  2   2
 / \ / \
3  4 4  3
But the following [1,2,2,null,3,null,3] is not:
    1
   / \
  2   2
   \   \
   3    3
Note:
Bonus points if you could solve it both recursively and iteratively.

<p>

<h3>解题<h3>
<p>使用递归法，注意每次比较的是左子树的左，和右子树的右<p>


```python
class Solution(object):
    def isSymmetric(self, root):
        """
        :type root: TreeNode
        :rtype: bool
        """
 
        if root:
            return self.helper(root.left,root.right)
        else:
            return True

    def helper(self,l,r):
        if l == None and r == None:
            return True
        
        if l is None or r is None:
            return False
        
        if l.val != r.val:
            return False
        else:
            return self.helper(l.left,r.right) and self.helper(l.right,r.left)
 
```
