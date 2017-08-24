# BinaryTreeNode
二叉树的算法
/**
*  创建二叉排序树
*  二叉排序树：左节点值全部小于根节点值，右节点值全部大于根节点值
*
*  @param values 数组
*
*  @return 二叉树根节点
*/
+ (BinaryTreeNode *)createTreeWithValues:(NSArray *)values;
/**
*  向二叉排序树节点添加一个节点
*
*  @param treeNode 根节点
*  @param value    值
*
*  @return 根节点
*/
+ (BinaryTreeNode *)addTreeNode:(BinaryTreeNode *)treeNode value:(NSInteger)value;
/**
*  二叉树中某个位置的节点（按层次遍历）
*
*  @param index    按层次遍历树时的位置(从0开始算)
*  @param rootNode 树根节点
*
*  @return 节点
*/
+ (BinaryTreeNode *)treeNodeAtIndex:(NSInteger)index inTree:(BinaryTreeNode *)rootNode;
/**
*  先序遍历
*  先访问根，再遍历左子树，再遍历右子树
*
*  @param rootNode 根节点
*  @param handler  访问节点处理函数
*/
+ (void)preOrderTraverseTree:(BinaryTreeNode *)rootNode handler:(TraverseTree_Block)handler;
/**
*  中序遍历
*  先遍历左子树，再访问根，再遍历右子树
*
*  @param rootNode 根节点
*  @param handler  访问节点处理函数
*/
+ (void)inOrderTraverseTree:(BinaryTreeNode *)rootNode handler:(TraverseTree_Block)handler;
/**
*  后序遍历
*  先遍历左子树，再遍历右子树，再访问根
*
*  @param rootNode 根节点
*  @param handler  访问节点处理函数
*/
+ (void)postOrderTraverseTree:(BinaryTreeNode *)rootNode handler:(TraverseTree_Block)handler;
/**
*  层次遍历（广度优先）
*  按照从上到下、从左到右的次序进行遍历。先遍历完一层，再遍历下一层，因此又叫广度优先遍历
*  @param rootNode 二叉树根节点
*  @param handler  访问节点处理函数
*/
+ (void)levelTraverseTree:(BinaryTreeNode *)rootNode handler:(TraverseTree_Block)handler;
/**
*  二叉树的深度
*
*  @param rootNode 二叉树根节点
*
*  @return 二叉树的深度
*/
+ (NSInteger)depthOfTree:(BinaryTreeNode *)rootNode;
/**
*  二叉树的宽度
*
*  @param rootNode 二叉树根节点
*
*  @return 二叉树宽度
*/
+ (NSInteger)widthOfTree:(BinaryTreeNode *)rootNode;
/**
*  二叉树的所有节点数
*
*  @param rootNode 根节点
*
*  @return 所有节点数
*/
+ (NSInteger)numberOfNodesInTree:(BinaryTreeNode *)rootNode;
/**
*  二叉树某层中的节点数
*
*  @param level    层
*  @param rootNode 根节点
*
*  @return 层中的节点数
*/
+ (NSInteger)numberOfNodesOnLevel:(NSInteger)level inTree:(BinaryTreeNode *)rootNode;
/**
*  二叉树叶子节点数
*
*  @param rootNode 根节点
*
*  @return 叶子节点数
*/
+ (NSInteger)numberOfLeafsInTree:(BinaryTreeNode *)rootNode;
/**
*  二叉树最大距离（直径）
*
*  @param rootNode 根节点
*
*  @return 最大距离
*/
+ (NSInteger)maxDistanceOfTree:(BinaryTreeNode *)rootNode;
/**
*  二叉树最大距离（直径） 第二种方案
*
*  @param rootNode 根节点
*
*  @return 最大距离
*/
+ (NSInteger)maxDistanceOfTree1:(BinaryTreeNode *)rootNode;
/**
*  计算树节点的最大深度和最大距离
*
*  @param rootNode 根节点
*
*  @return TreeNodeProperty
*/
+ (TreeNodeProperty *)propertyOfTreeNode:(BinaryTreeNode *)rootNode;
/**
*  二叉树中某个节点到根节点的路径
*
*  @param treeNode 节点
*  @param rootNode 根节点
*
*  @return 存放路径节点的数组
*/
+ (NSArray *)pathOfTreeNode:(BinaryTreeNode *)treeNode inTree:(BinaryTreeNode *)rootNode;
/**
*  查找某个节点是否在树中
*
*  @param treeNode 待查找的节点
*  @param rootNode 根节点
*  @param path  根节点到待查找节点的路径
*
*  @return YES：找到，NO：未找到
*/
+ (BOOL)isFoundTreeNode:(BinaryTreeNode *)treeNode inTree:(BinaryTreeNode *)rootNode routePath:(NSMutableArray *)path;
/**
*  二叉树中两个节点最近的公共父节点
*
*  @param nodeA    第一个节点
*  @param nodeB    第二个节点
*  @param rootNode 二叉树根节点
*
*  @return 最近的公共父节点
*/
+ (BinaryTreeNode *)parentOfNode:(BinaryTreeNode *)nodeA andNode:(BinaryTreeNode *)nodeB inTree:(BinaryTreeNode *)rootNode;
/**
*  二叉树中两个节点之间的路径
*
*  @param nodeA    第一个节点
*  @param nodeB    第二个节点
*  @param rootNode 二叉树根节点
*
*  @return 两个节点间的路径
*/
+ (NSArray *)pathFromNode:(BinaryTreeNode *)nodeA toNode:(BinaryTreeNode *)nodeB inTree:(BinaryTreeNode *)rootNode;
/**
*  二叉树两个节点之间的距离
*
*  @param nodeA    第一个节点
*  @param nodeB    第二个节点
*  @param rootNode 二叉树根节点
*
*  @return 两个节点间的距离（-1：表示没有找到路径）
*/
+ (NSInteger)distanceFromNode:(BinaryTreeNode *)nodeA toNode:(BinaryTreeNode *)nodeB inTree:(BinaryTreeNode *)rootNode;
/**
*  翻转二叉树（又叫：二叉树的镜像） 递归
*
*  @param rootNode 根节点
*
*  @return 翻转后的树根节点（其实就是原二叉树的根节点）
*/
+ (BinaryTreeNode *)invertBinaryTree:(BinaryTreeNode *)rootNode;
/**
*  翻转二叉树  （非递归）
*
*  @param rootNode 二叉树根节点
*/
+ (BinaryTreeNode *)invertBinaryTree1:(BinaryTreeNode *)rootNode;
/**
*  是否完全二叉树
*
*  @param rootNode 根节点
*
*  @return YES：是完全二叉树，NO：不是完全二叉树
*/
+ (BOOL)isCompleteBinaryTree:(BinaryTreeNode *)rootNode;
/**
*  是否满二叉树
*
*  @param rootNode 根节点
*
*  @return YES：满二叉树，NO：非满二叉树
*/
+ (BOOL)isFullBinaryTree:(BinaryTreeNode *)rootNode;
/**
*  是否平衡二叉树
*
*  @param rootNode 根节点
*
*  @return YES：平衡二叉树，NO：非平衡二叉树
*/
+ (BOOL)isAVLBinaryTree:(BinaryTreeNode *)rootNode;
/**
*  最大节点
*
*  @param rootNode 二叉树根节点
*/
+ (BinaryTreeNode *)MaxBinaryTree:(BinaryTreeNode *)rootNode;
