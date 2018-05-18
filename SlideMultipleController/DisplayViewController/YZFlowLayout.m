//
//  YZFlowLayout.m
//  SlideMultipleController
//
//  Created by l on 2018/5/17.
//  Copyright © 2018年 l. All rights reserved.
//

#import "YZFlowLayout.h"

@implementation YZFlowLayout

- (void)prepareLayout
{
    [super prepareLayout];
    
    self.minimumInteritemSpacing = 0;
    
    self.minimumLineSpacing = 0;
    
    if (self.collectionView.bounds.size.height) {
        
        self.itemSize = self.collectionView.bounds.size;
    }

    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;    
}

@end
