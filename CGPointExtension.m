CG_INLINE CGPoint
CGPointAdd(CGPoint pointLeft, CGPoint pointRight) {
  return CGPointMake(pointLeft.x+pointRight.x, pointLeft.y+pointRight.y);
}

CG_INLINE CGPoint
CGPointSubtract(CGPoint pointLeft, CGPoint pointRight) {
  return CGPointMake(pointLeft.x-pointRight.x, pointLeft.y-pointRight.y);
}

CG_INLINE CGPoint
CGPointMultiplyScalar(CGPoint point, CGFloat value) {
  return CGPointMake(point.x*value, point.y*value);

}

CG_INLINE CGPoint
CGPointDivideScalar(CGPoint point, CGFloat value) {
  return CGPointMake(point.x/value, point.y/value);
  
}

CG_INLINE CGFloat
CGPointDotProduct(CGPoint pointLeft, CGPoint pointRight) {
  return (pointLeft.x*pointRight.x) + (pointLeft.y*pointRight.y) ;

}

CG_INLINE CGFloat
CGPointMagnitude(CGPoint point) {
  return sqrtf(CGPointDotProduct(point, point));
}

CG_INLINE CGPoint
CGPointNormalize(CGPoint point) {
  CGFloat magnitude = CGPointMagnitude(point);
  CGPoint newPoint = point;
  if(magnitude > 0)
    newPoint = CGPointDivideScalar(point, magnitude);
  return newPoint;
    
}

CG_INLINE CGPoint
CGPointLimit(CGPoint point, CGFloat value) {
  if(CGPointMagnitude(point) > value) {
    point = CGPointNormalize(point);
    point = CGPointMultiplyScalar(point, value);
  }
  return point;
  
}
