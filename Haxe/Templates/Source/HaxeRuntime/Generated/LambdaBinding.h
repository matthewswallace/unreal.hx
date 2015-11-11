#pragma once

#include <OPointers.h>
#include <unreal/helpers/GcRef.h>
#include <unreal/helpers/HxcppRuntime.h>
#include <TypeParamGlue.h>

// Unreal-compiled
template<typename RV, typename... Args>
class LambdaBinder
{
  ::unreal::helpers::GcRef haxeGcRef;

public:
  LambdaBinder(void* haxeFn) {
    this->haxeGcRef.set(haxeFn);
  }
  RV operator() (Args... params) const {
    return TypeParamGlue<RV>::haxeToUe(
      unreal::helpers::HxcppRuntime::callFunction(
        const_cast<LambdaBinder<RV, Args...>*>(this)->haxeGcRef.get(),
        TypeParamGlue<Args>::ueToHaxe(params)...
      )
    );
  }
};

template<typename... Args>
class LambdaBinderVoid
{
  ::unreal::helpers::GcRef haxeGcRef;

public:
  LambdaBinderVoid(void* haxeFn) {
    this->haxeGcRef.set(haxeFn);
  }
  void operator() (Args... params) const {
    unreal::helpers::HxcppRuntime::callFunction(
      const_cast<LambdaBinderVoid<Args...>*>(this)->haxeGcRef.get(),
      TypeParamGlue<Args>::ueToHaxe(params)...
    );
  }
};

/*
 * Example Glue.cpp
 *
 * void MyDelegate_Glue::Bind(void* self, void* fn) {
 *  ((MyDelegate*)self)->Bind(LambdaBinder<RV_Type, Arg1Type, Arg2Type>(fn));
 * }
 */


