


<h3>题意<h3>
<p>Follow up for N-Queens problem.

Now, instead outputting board configurations, return the total number of distinct solutions.
<p>




<h3>解题<h3>
<p>refer to N-queen problem<p>



```python

class Solution(object):
    def totalNQueens(self, n):
        """
        :type n: int
        :rtype: List[List[str]]
        """
        # 每一行，每一列，每一个斜线上，只能有一个Queen
        
        def check(k,j):
            for i in range(k):
                # 考察每一列只能有一个Queen
                # 考察每个斜线上，只能有一个Queen
                if board[i] == j or abs(k-i) == abs(board[i]-j):
                    return False
            return True
        def dfs(depth,curl):
            if depth == n:
                res.append(curl)
                return
            for i in range(n):
                if check(depth,i):
                    board[depth] = i
                    s = '.'*n
                    dfs(depth+1, curl+[s[:i]+'Q'+s[i+1:]])
                    board[depth] = -1
                                      
        board = [-1 for i in range(n)]
        res= []
        dfs(0,[])
        return len(res)

```
