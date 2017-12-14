# https://www.hackerrank.com/challenges/ctci-is-binary-search-tree/problem

def checkBST(root):
    import sys
    return cBST(root, -sys.maxint, sys.maxint)


def cBST(root, intmin, intmax):
    if not root:
        return True
    if (root.data <= intmin or root.data >= intmax):
        return False
    return (cBST(root.left, intmin, root.data) and cBST(root.right, root.data, intmax))
