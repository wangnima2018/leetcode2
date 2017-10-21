


<h3>题意<h3>
<p>Given an array and a value, remove all instances of that value in place and return the new length.

Do not allocate extra space for another array, you must do this in place with constant memory.

The order of elements can be changed. It doesn't matter what you leave beyond the new length.

Example:
Given input array nums = [3,2,2,3], val = 3

Your function should return length = 2, with the first two elements of nums being 2.
<p>




<h3>解题<h3>
<p>使用一个右指针指向最后，对于元素i进行从后到前的遍历，
if A[i] == elem:, do swap, otherwise, do nothing<p>




<h3>细节<h3>
<p>return的是元素的个数，需要right+1<p>

```python
class Solution(object):
    #def removeElement(self, nums, val):
    
    # 本题需要反复看
    def removeElement(self, A, elem):
        right = len(A)-1
        for i in range(len(A) - 1, -1, -1):
            if A[i] == elem:
                A[i], A[right] = A[right], A[i]
                right -= 1
        return right+1
        """
```
