//
//  ViewController.m
//  BinaryTreeNode
//
//  Created by hillliao on 2017/8/24.
//  Copyright © 2017年 hillliao. All rights reserved.
//

#import "ViewController.h"
#import "BinaryTreeNode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *muns = @[@50,@67,@32,@31,@72,@89,@90,@3,@57,@48];
    BinaryTreeNode *root = [BinaryTreeNode createTreeWithValues:muns];
    //最大节点
    BinaryTreeNode *maxroot = [BinaryTreeNode MaxBinaryTree:root];
    NSLog(@"最大节点 %zd",maxroot.value);
    // 7 节点
    BinaryTreeNode *indexroot = [BinaryTreeNode treeNodeAtIndex:7 inTree:root];
    NSLog(@"第 7 节点 %zd",indexroot.value);
    //先序遍历
    NSMutableArray *orderArray = [NSMutableArray array];
    [BinaryTreeNode preOrderTraverseTree:root handler:^(BinaryTreeNode *treeNode) {
        [orderArray addObject:@(treeNode.value)];
    }];
    NSLog(@"先序遍历结果：%@", [orderArray componentsJoinedByString:@","]);
    //中序遍历
    NSMutableArray *inOrderArray = [NSMutableArray array];
    [BinaryTreeNode inOrderTraverseTree:root handler:^(BinaryTreeNode *treeNode) {
        [inOrderArray addObject:@(treeNode.value)];
    }];
    NSLog(@"中序遍历：%@", [inOrderArray componentsJoinedByString:@","]);
    //后序遍历
    NSMutableArray *postOrderArray = [NSMutableArray array];
    [BinaryTreeNode postOrderTraverseTree:root handler:^(BinaryTreeNode *treeNode) {
        [postOrderArray addObject:@(treeNode.value)];
    }];
    NSLog(@"后序遍历：%@", [postOrderArray componentsJoinedByString:@","]);
    //层次遍历
    NSMutableArray *levelArray = [NSMutableArray array];
    [BinaryTreeNode levelTraverseTree:root handler:^(BinaryTreeNode *treeNode) {
        [levelArray addObject:@(treeNode.value)];
    }];
    NSLog(@"二叉树的深度：%zd", [BinaryTreeNode depthOfTree:root]);
    
    NSLog(@"二叉树的所有节点数：%zd", [BinaryTreeNode numberOfNodesInTree:root]);
    
    NSLog(@"二叉树 %zd 层中的节点数：%zd",2,[BinaryTreeNode numberOfNodesOnLevel:2 inTree:root]);
    
    NSLog(@"二叉树叶子节点数：%zd",[BinaryTreeNode numberOfLeafsInTree:root]);
    
    NSLog(@"二叉树最大距离：%zd",[BinaryTreeNode maxDistanceOfTree:root]);
    
    NSLog(@"二叉树的宽度：%zd", [BinaryTreeNode widthOfTree:root]);
    
    TreeNodeProperty * p = [BinaryTreeNode propertyOfTreeNode:root];
    NSLog(@"二叉树最大距离：%zd 深度:%zd",p.distance,p.depth);
    
    NSLog(@"二叉树中两个节点之间的距离：%zd", [BinaryTreeNode distanceFromNode:maxroot toNode:indexroot inTree:root]);
    
    NSLog(@" %@ 完全二叉树", [BinaryTreeNode isCompleteBinaryTree:root] ? @"是" : @"不是");
    
    NSLog(@" %@ 满二叉树", [BinaryTreeNode isFullBinaryTree:root] ? @"是" : @"不是");
    
    NSLog(@" %@ 平衡二叉树", [BinaryTreeNode isAVLBinaryTree:root] ? @"是" : @"不是");
    // 翻转树
    BinaryTreeNode *invertroot = [BinaryTreeNode invertBinaryTree:root];
    NSMutableArray *inverArray = [NSMutableArray array];
    [BinaryTreeNode inOrderTraverseTree:invertroot handler:^(BinaryTreeNode *treeNode) {
        [inverArray addObject:@(treeNode.value)];
    }];
    NSLog(@"遍历结果：%@", [inverArray componentsJoinedByString:@","]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
