//
//  ASLog.m
//  AsyncDisplayKit
//
//  Created by Adlai Holler on 6/21/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <AsyncDisplayKit/ASLog.h>

os_log_t ASNodeLog() {
  static os_log_t log;
#if ASNodeLogEnabled
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    log = as_log_create("org.TextureGroup.Texture", "Node");
  });
#endif
  return log;
}

os_log_t ASLayoutLog() {
  static os_log_t log;
#if ASLayoutLogEnabled
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    log = as_log_create("org.TextureGroup.Texture", "Layout");
  });
#endif
  return log;
}

os_log_t ASCollectionLog() {
  static os_log_t log;
#if ASCollectionLogEnabled
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    log = as_log_create("org.TextureGroup.Texture", "Collection");
  });
#endif
  return log;
}

os_log_t ASRenderLog() {
  static os_log_t log;
#if ASRenderLogEnabled
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    log = as_log_create("org.TextureGroup.Texture", "Render");
  });
#endif
  return log;
}

os_log_t ASImageLoadingLog() {
  static os_log_t log;
#if ASImageLoadingLogEnabled
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    log = as_log_create("org.TextureGroup.Texture", "ImageLoading");
  });
#endif
  return log;
}

os_log_t ASMainThreadDeallocationLog() {
  static os_log_t log;
#if ASMainThreadDeallocationLogEnabled
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    log = as_log_create("org.TextureGroup.Texture", "MainDealloc");
  });
#endif
  return log;
}
