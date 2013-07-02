//
//  MDMenuActivity.m
//  Travel
//
//  Created by Chirag shah on 29/06/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "MDMenuActivity.h"
#import "MDProvinceActivity.h"

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
    [MDProvinceActivity activityWithTitle:@"AlmeriaProvince" icon:@"adventure_AlmeriaProvince"],
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"adventure_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"CordobaProvince" icon:@"adventure_CordobaProvince"],
    [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"adventure_GranadaProvince"],
    [MDProvinceActivity activityWithTitle:@"HuelvaProvince" icon:@"adventure_HuelvaProvince"],
    [MDProvinceActivity activityWithTitle:@"JaenProvince" icon:@"adventure_JaenProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"adventure_MalagaProvince"],
    [MDProvinceActivity activityWithTitle:@"SevilleProvince" icon:@"adventure_SevilleProvince"]
    ];
}

- (NSArray *)cycling {
    return @[
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"cycling_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"cycling_GranadaProvince"],
    [MDProvinceActivity activityWithTitle:@"HuelvaProvince" icon:@"cycling_HuelvaProvince"],
    [MDProvinceActivity activityWithTitle:@"JaenProvince" icon:@"cycling_JaenProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"cycling_MalagaProvince"],
    [MDProvinceActivity activityWithTitle:@"SevilleProvince" icon:@"cycling_SevilleProvince"]
    ];
}

- (NSArray *)groups {
    return @[
        [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"groups_CadizProvince"],
        [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"groups_GranadaProvince"],
        [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"groups_MalagaProvince"]
    ];
}

- (NSArray *)horseriding {
    return @[
        [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"horseriding_CadizProvince"],
        [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"horseriding_GranadaProvince"],
        [MDProvinceActivity activityWithTitle:@"HuelvaProvince" icon:@"horseriding_HuelvaProvince"],
        [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"horseriding_MalagaProvince"],
        [MDProvinceActivity activityWithTitle:@"SevilleProvince" icon:@"horseriding_SevilleProvince"]
    ];
}

- (NSArray *)sup {
    return @[
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"sup_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"sup_MalagaProvince"]
    ];
}

- (NSArray *)surf {
    return @[
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"surf_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"surf_MalagaProvince"]
    ];
}

- (NSArray *)kitesurf {
    return @[
        [MDProvinceActivity activityWithTitle:@"AlmeriaProvince" icon:@"kitesurf_AlmeriaProvince"],
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"kitesurf_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"kitesurf_MalagaProvince"]
    ];
}

- (NSArray *)rockClibing {
    return @[
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"rockClibing_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"rockClibing_GranadaProvince"],
    [MDProvinceActivity activityWithTitle:@"JaenProvince" icon:@"rockClibing_JaenProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"rockClibing_MalagaProvince"],
    [MDProvinceActivity activityWithTitle:@"SevilleProvince" icon:@"rockClibing_SevilleProvince"]
    ];
}

- (NSArray *)sailing {
    return @[
    [MDProvinceActivity activityWithTitle:@"AlmeriaProvince" icon:@"sailing_AlmeriaProvince"],
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"sailing_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"HuelvaProvince" icon:@"sailing_HuelvaProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"sailing_MalagaProvince"]
    ];
}

- (NSArray *)scubaDiving {
    return @[
    [MDProvinceActivity activityWithTitle:@"AlmeriaProvince" icon:@"scubaDiving_AlmeriaProvince"],
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"scubaDiving_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"scubaDiving_GranadaProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"scubaDiving_MalagaProvince"]
    ];
}

- (NSArray *)ski {
    return @[
    [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"ski_GranadaProvince"]
    ];
}

- (NSArray *)walking {
    return @[
    [MDProvinceActivity activityWithTitle:@"AlmeriaProvince" icon:@"walking_AlmeriaProvince"],
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"walking_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"walking_GranadaProvince"],
    [MDProvinceActivity activityWithTitle:@"HuelvaProvince" icon:@"walking_HuelvaProvince"],
    [MDProvinceActivity activityWithTitle:@"MalagaProvince" icon:@"walking_MalagaProvince"],
    [MDProvinceActivity activityWithTitle:@"SevilleProvince" icon:@"walking_SevilleProvince"]
    ];
}

- (NSArray *)windsurf {
    return @[
    [MDProvinceActivity activityWithTitle:@"AlmeriaProvince" icon:@"windsurf_AlmeriaProvince"],
    [MDProvinceActivity activityWithTitle:@"CadizProvince" icon:@"windsurf_CadizProvince"],
    [MDProvinceActivity activityWithTitle:@"GranadaProvince" icon:@"windsurf_GranadaProvince"],
    [MDProvinceActivity activityWithTitle:@"HuelvaProvince" icon:@"windsurf_HuelvaProvince"]
    ];
}

- (void)addProvicesInMenu:(NSArray *)province {
    if ([self.title isEqualToString:@"Adventure"]) {
        [self.provices addObjectsFromArray:[self adventure]];
        
    } else if([self.title isEqualToString:@"Cycling"]){
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
