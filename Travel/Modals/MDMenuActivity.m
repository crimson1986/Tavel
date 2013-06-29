//
//  MDMenuActivity.m
//  Travel
//
//  Created by Chirag shah on 29/06/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "MDMenuActivity.h"

@interface MDMenuActivity()
@property (nonatomic, strong) NSMutableArray *provices;
@end

@implementation MDMenuActivity


- (id)initWithTitle:(NSString *)title icon:(NSString *)imageName {
    self = [super initWithTitle:title icon:imageName];
    if (self) {
//        self.title = title;
//        self.profileImageName = imageName;
        [self addProvicesInMenu:nil];
    }
    return self;
}

+ (MDMenuActivity *)activityWithTitle:(NSString *)title icon:(NSString *)imageName {
    return [[MDMenuActivity alloc] initWithTitle:title icon:imageName];
}

- (NSMutableArray *)provices {
    if (!_provices) {
        _provices = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return _provices;
}

- (NSArray *)adventure {
    return @[
    [MDActivity activityWithTitle:@"AlmeriaProvince" icon:@"adventure_AlmeriaProvince"],
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"adventure_CadizProvince"],
    [MDActivity activityWithTitle:@"CordobaProvince" icon:@"adventure_CordobaProvince"],
    [MDActivity activityWithTitle:@"GranadaProvince" icon:@"adventure_GranadaProvince"],
    [MDActivity activityWithTitle:@"HuelvaProvince" icon:@"adventure_HuelvaProvince"],
    [MDActivity activityWithTitle:@"JaenProvince" icon:@"adventure_JaenProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"adventure_MalagaProvince"],
    [MDActivity activityWithTitle:@"SevilleProvince" icon:@"adventure_SevilleProvince"]
    ];
}

- (NSArray *)cycling {
    return @[
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"cycling_CadizProvince"],
    [MDActivity activityWithTitle:@"GranadaProvince" icon:@"cycling_GranadaProvince"],
    [MDActivity activityWithTitle:@"HuelvaProvince" icon:@"cycling_HuelvaProvince"],
    [MDActivity activityWithTitle:@"JaenProvince" icon:@"cycling_JaenProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"cycling_MalagaProvince"],
    [MDActivity activityWithTitle:@"SevilleProvince" icon:@"cycling_SevilleProvince"]
    ];
}

- (NSArray *)groups {
    return @[
        [MDActivity activityWithTitle:@"CadizProvince" icon:@"groups_CadizProvince"],
        [MDActivity activityWithTitle:@"GranadaProvince" icon:@"groups_GranadaProvince"],
        [MDActivity activityWithTitle:@"MalagaProvince" icon:@"groups_MalagaProvince"]
    ];
}

- (NSArray *)horseriding {
    return @[
        [MDActivity activityWithTitle:@"CadizProvince" icon:@"horseriding_CadizProvince"],
        [MDActivity activityWithTitle:@"GranadaProvince" icon:@"horseriding_GranadaProvince"],
        [MDActivity activityWithTitle:@"HuelvaProvince" icon:@"horseriding_HuelvaProvince"],
        [MDActivity activityWithTitle:@"MalagaProvince" icon:@"horseriding_MalagaProvince"],
        [MDActivity activityWithTitle:@"SevilleProvince" icon:@"horseriding_SevilleProvince"]
    ];
}

- (NSArray *)sup {
    return @[
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"sup_CadizProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"sup_MalagaProvince"]
    ];
}

- (NSArray *)surf {
    return @[
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"surf_CadizProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"surf_MalagaProvince"]
    ];
}

- (NSArray *)kitesurf {
    return @[
        [MDActivity activityWithTitle:@"AlmeriaProvince" icon:@"kitesurf_AlmeriaProvince"],
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"kitesurf_CadizProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"kitesurf_MalagaProvince"]
    ];
}

- (NSArray *)rockClibing {
    return @[
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"rockClibing_CadizProvince"],
    [MDActivity activityWithTitle:@"GranadaProvince" icon:@"rockClibing_GranadaProvince"],
    [MDActivity activityWithTitle:@"JaenProvince" icon:@"rockClibing_JaenProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"rockClibing_MalagaProvince"],
    [MDActivity activityWithTitle:@"SevilleProvince" icon:@"rockClibing_SevilleProvince"]
    ];
}

- (NSArray *)sailing {
    return @[
    [MDActivity activityWithTitle:@"AlmeriaProvince" icon:@"sailing_AlmeriaProvince"],
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"sailing_CadizProvince"],
    [MDActivity activityWithTitle:@"HuelvaProvince" icon:@"sailing_HuelvaProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"sailing_MalagaProvince"]
    ];
}

- (NSArray *)scubaDiving {
    return @[
    [MDActivity activityWithTitle:@"AlmeriaProvince" icon:@"scubaDiving_AlmeriaProvince"],
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"scubaDiving_CadizProvince"],
    [MDActivity activityWithTitle:@"GranadaProvince" icon:@"scubaDiving_GranadaProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"scubaDiving_MalagaProvince"]
    ];
}

- (NSArray *)ski {
    return @[
    [MDActivity activityWithTitle:@"GranadaProvince" icon:@"ski_GranadaProvince"]
    ];
}

- (NSArray *)walking {
    return @[
    [MDActivity activityWithTitle:@"AlmeriaProvince" icon:@"walking_AlmeriaProvince"],
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"walking_CadizProvince"],
    [MDActivity activityWithTitle:@"GranadaProvince" icon:@"walking_GranadaProvince"],
    [MDActivity activityWithTitle:@"HuelvaProvince" icon:@"walking_HuelvaProvince"],
    [MDActivity activityWithTitle:@"MalagaProvince" icon:@"walking_MalagaProvince"],
    [MDActivity activityWithTitle:@"SevilleProvince" icon:@"walking_SevilleProvince"]
    ];
}

- (NSArray *)windsurf {
    return @[
    [MDActivity activityWithTitle:@"AlmeriaProvince" icon:@"windsurf_AlmeriaProvince"],
    [MDActivity activityWithTitle:@"CadizProvince" icon:@"windsurf_CadizProvince"],
    [MDActivity activityWithTitle:@"GranadaProvince" icon:@"windsurf_GranadaProvince"],
    [MDActivity activityWithTitle:@"HuelvaProvince" icon:@"windsurf_HuelvaProvince"]
    ];
}

- (void)addProvicesInMenu:(NSArray *)province {
    if ([self.title isEqualToString:@"Adventure"]) {
        [self.provices addObjectsFromArray:[self adventure]];
        
    } else if([self.title isEqualToString:@"Cycling	"]){
        [self.provices addObjectsFromArray:[self cycling]];
    }
    else if([self.title isEqualToString:@"Groups"]){
        [self.provices addObjectsFromArray:[self groups]];
    }
    else if([self.title isEqualToString:@"Horse riding"]){
        [self.provices addObjectsFromArray:[self horseriding]];
    }
    else if([self.title isEqualToString:@"Kitesurf"]){
        [self.provices addObjectsFromArray:[self kitesurf]];
    }
    else if([self.title isEqualToString:@"Rock climbing"]){
        [self.provices addObjectsFromArray:[self rockClibing]];
    }
    else if([self.title isEqualToString:@"Sailing"]){
        [self.provices addObjectsFromArray:[self sailing]];
    }
    else if([self.title isEqualToString:@"Scuba diving"]){
        [self.provices addObjectsFromArray:[self scubaDiving]];
    }
    else if([self.title isEqualToString:@"Ski"]){
        [self.provices addObjectsFromArray:[self ski]];
    }
    else if([self.title isEqualToString:@"Sup"]){
        [self.provices addObjectsFromArray:[self sup]];
    }
    else if([self.title isEqualToString:@"Surf"]){
        [self.provices addObjectsFromArray:[self surf]];
    }
    else if([self.title isEqualToString:@"Walking"]){
        [self.provices addObjectsFromArray:[self walking]];
    }
    else if([self.title isEqualToString:@"Windsurf"]){
        [self.provices addObjectsFromArray:[self windsurf]];
    }
}

- (NSMutableArray *)getProvince {
    return self.provices;
}
@end
