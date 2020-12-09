#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "ASBaseModel.h"
#import "ASDataManager.h"
#import "ASPage.h"
#import "ASRequestPage.h"
#import "RealmObject.h"

FOUNDATION_EXPORT double ASBaseModelVersionNumber;
FOUNDATION_EXPORT const unsigned char ASBaseModelVersionString[];

