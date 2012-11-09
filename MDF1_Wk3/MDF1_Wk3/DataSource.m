//
//  DataSource.m
//  MDF1_Wk3
//
//  Created by Brandon Sease on 11/8/12.
//  Copyright (c) 2012 Brandon Sease. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource

-(NSMutableArray*)getData
{
    CLLocationCoordinate2D pittsburghloc;
    pittsburghloc.latitude = 40.441f;
    pittsburghloc.longitude = -79.996f;
    
    Annotations *pittsurgh = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Pittsburgh Location" coord:pittsburghloc];
    
    CLLocationCoordinate2D jaxloc;
    jaxloc.latitude = 30.332f;
    jaxloc.longitude = -81.656f;
    
    Annotations *jax = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Jacksonville Location" coord:jaxloc];
    
    CLLocationCoordinate2D erieLoc;
    erieLoc.latitude = 42.129f;
    erieLoc.longitude = -80.085f;
    Annotations *erie = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Erie Location" coord:erieLoc];
    
    CLLocationCoordinate2D sacramentoLoc;
    sacramentoLoc.latitude = 38.582f;
    sacramentoLoc.longitude = -121.494f;
    Annotations *sacramento = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Sacramento Location" coord:sacramentoLoc];
    
    CLLocationCoordinate2D fairfaxLoc;
    fairfaxLoc.latitude = 38.845f;
    fairfaxLoc.longitude = -77.306f;
    Annotations *fairfax = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Fairfax Location" coord:fairfaxLoc];
    
    CLLocationCoordinate2D universalLoc;
    universalLoc.latitude = 28.473f;
    universalLoc.longitude = -81.466f;
    Annotations *universal = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Universal Studios Location" coord:universalLoc];
    
    CLLocationCoordinate2D windsorLoc;
    windsorLoc.latitude = 36.808f;
    windsorLoc.longitude = -76.744f;
    Annotations *windsor = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Windsor Location" coord:windsorLoc];
    
    CLLocationCoordinate2D kirbyvilleLoc;
    kirbyvilleLoc.latitude = 36.623f;
    kirbyvilleLoc.longitude = -93.164;
    Annotations *kirbyville = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Kirbyville Location" coord:kirbyvilleLoc];
    
    CLLocationCoordinate2D pleasanthillsLoc;
    pleasanthillsLoc.latitude = 39.479f;
    pleasanthillsLoc.longitude = -76.394f;
    Annotations *pleasantHills = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Pleasant Hills Location" coord:pleasanthillsLoc];
    
    CLLocationCoordinate2D virginiaBeachLoc;
    virginiaBeachLoc.latitude = 36.853f;
    virginiaBeachLoc.longitude = -75.978f;
    Annotations *virginiaBeach = [[Annotations alloc] initWithTitle:@"Brandon's Food Place" subtitle:@"Virginia Beach Location" coord:virginiaBeachLoc];
    
    
    NSMutableArray *aList = [NSArray arrayWithObjects:pittsurgh, jax, erie, sacramento, fairfax, universal, windsor, kirbyville, pleasantHills, virginiaBeach, nil];
    
    return aList;
}

@end

