//
//  Data.m
//  MDF1_Wk2
//
//  Created by Brandon Sease on 10/30/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "Data.h"

@implementation Data

-(NSArray*)getArray
{
    NSArray *item1 = [[NSArray alloc]initWithObjects:@"Cheese Fries",@"Crispy fries loaded with all-beef chili, melted cheddar & Monterrey jack, bacon and jalapeños.", nil];
    NSArray *item2 = [[NSArray alloc]initWithObjects:@"Nachos",@"Chili, pico de gallo, shredded lettuce, jalapenos, queso and salsa all atop a mound of fresh, corn tortilla chips.", nil];
    NSArray *item3 = [[NSArray alloc]initWithObjects:@"Wings",@"Flavors: Plain • Mild • Medium • Hot • Hot Cajun • Hot Parmesan • Hot Cajun Parmesan • Extra Hot • Etra Hot Cajun • Atomic • Buffalo • Hot Buffalo • Buffalo Cajun • Buffalo Parmesan • Buffalo Ranch • Ranch • Ranch Parmesan • Cajun • Cajun Parmesan • Butter & Garlic • Hot Butter & Garlic • Butter & Garlic Parmesan • Hot Butter & Garlic Parmesan • BBQ • Hot BBQ • Honey Mustard • Honey Mustard Cajun • Hot Honey Mustardn", nil];
    NSArray *item4 = [[NSArray alloc]initWithObjects:@"Cheese Burger",@"1/3 lb. burger topped with cheddar cheese, bacon and BBQ sauce", nil];
    NSArray *item5 = [[NSArray alloc]initWithObjects:@"Delmonico Steak",@"Cut fresh, juicy and flavorful.   12 oz.", nil];
    NSArray *item6 = [[NSArray alloc]initWithObjects:@"Buffalo Chicken Sandwich",@"This crispy chicken sandwich is topped of with fresh lettuce and a saucy, bold flavor.", nil];
    NSArray *item7 = [[NSArray alloc]initWithObjects:@"Cheese Cake",@"Our Famous Creamy Cheesecake with a Graham Cracker Crust and Sour Cream Topping.", nil];
    NSArray *item8 = [[NSArray alloc]initWithObjects:@"Molten Lava Cake",@"Rich dark chocolate cake with a creamy fudge center served warm with vanilla bean ice cream.", nil];
    NSArray *item9 = [[NSArray alloc]initWithObjects:@"French Silk Pie",@"A very creamy, chocolatey pie which is traditionally served chilled or at room temperature.", nil];
    NSArray *list = [[NSArray alloc]initWithObjects:item1, item2, item3, item4, item5, item6, item7, item8, item9, nil];
    return list;
}

@end
