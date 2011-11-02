//
//  EGODatabase+Additions.m
//  EGODatabase
//
//  Created by Joao Prado Maia on 11/2/11.
//  Copyright (c) 2011 Ipanema Labs LLC. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "EGODatabase+Additions.h"

@implementation EGODatabase (Additions)

- (int)intForQuery:(NSString *)sql
{
    return [self intForQuery:sql parameters:nil];
}
- (int)intForQuery:(NSString *)sql parameters:(NSArray *)parameters
{
    EGODatabaseResult *result = [self executeQuery:sql parameters:parameters];
    EGODatabaseRow *row = [result rowAtIndex:0];
    return [row intForColumnIndex:0];
}

- (long)longForQuery:(NSString *)sql
{
    return [self longForQuery:sql parameters:nil];
}
- (long)longForQuery:(NSString *)sql parameters:(NSArray *)parameters
{
    EGODatabaseResult *result = [self executeQuery:sql parameters:parameters];
    EGODatabaseRow *row = [result rowAtIndex:0];
    return [row longForColumnIndex:0];
}

- (BOOL)boolForQuery:(NSString *)sql
{
    return [self boolForQuery:sql parameters:nil];
}
- (BOOL)boolForQuery:(NSString *)sql parameters:(NSArray *)parameters
{
    EGODatabaseResult *result = [self executeQuery:sql parameters:parameters];
    EGODatabaseRow *row = [result rowAtIndex:0];
    return [row boolForColumnIndex:0];
}

- (double)doubleForQuery:(NSString *)sql
{
    return [self doubleForQuery:sql parameters:nil];
}
- (double)doubleForQuery:(NSString *)sql parameters:(NSArray *)parameters
{
    EGODatabaseResult *result = [self executeQuery:sql parameters:parameters];
    EGODatabaseRow *row = [result rowAtIndex:0];
    return [row doubleForColumnIndex:0];
}

- (NSString *)stringForQuery:(NSString *)sql
{
    return [self stringForQuery:sql parameters:nil];
}
- (NSString *)stringForQuery:(NSString *)sql parameters:(NSArray *)parameters
{
    EGODatabaseResult *result = [self executeQuery:sql parameters:parameters];
    EGODatabaseRow *row = [result rowAtIndex:0];
    return [row stringForColumnIndex:0];
}

@end
