// This file is generated. 
// Edit platform/darwin/scripts/generate-style-code.js, then run `make style-code-darwin`.

#import "MGLStyleLayerTests.h"

@interface MGLSymbolLayerTests : MGLStyleLayerTests
@end

@implementation MGLSymbolLayerTests

- (void)testSymbolLayer {
    NSString *filePath = [[NSBundle bundleForClass:self.class] pathForResource:@"amsterdam" ofType:@"geojson"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    MGLGeoJSONSource *source = [[MGLGeoJSONSource alloc] initWithSourceIdentifier:@"sourceID" URL:url];
MGLSymbolStyleLayer *layer = [[MGLSymbolStyleLayer alloc] initWithLayerIdentifier:@"layerID" source:source];
    [self.mapView.style addSource:source];
    [self.mapView.style addLayer:layer];

    layer.symbolPlacement = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerSymbolPlacementLine type:@encode(MGLSymbolStyleLayerSymbolPlacement)];
    layer.symbolSpacing = [MGLRuntimeStylingHelper testNumber];
    layer.symbolAvoidEdges = [MGLRuntimeStylingHelper testBool];
    layer.iconAllowOverlap = [MGLRuntimeStylingHelper testBool];
    layer.iconIgnorePlacement = [MGLRuntimeStylingHelper testBool];
    layer.iconOptional = [MGLRuntimeStylingHelper testBool];
    layer.iconRotationAlignment = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerIconRotationAlignment)];
    layer.iconSize = [MGLRuntimeStylingHelper testNumber];
    layer.iconTextFit = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconTextFitHeight type:@encode(MGLSymbolStyleLayerIconTextFit)];
    layer.iconTextFitPadding = [MGLRuntimeStylingHelper testPadding];
    layer.iconImage = [MGLRuntimeStylingHelper testString];
    layer.iconRotate = [MGLRuntimeStylingHelper testNumber];
    layer.iconPadding = [MGLRuntimeStylingHelper testNumber];
    layer.iconKeepUpright = [MGLRuntimeStylingHelper testBool];
    layer.iconOffset = [MGLRuntimeStylingHelper testOffset];
    layer.textPitchAlignment = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextPitchAlignmentViewport type:@encode(MGLSymbolStyleLayerTextPitchAlignment)];
    layer.textRotationAlignment = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerTextRotationAlignment)];
    layer.textField = [MGLRuntimeStylingHelper testString];
    layer.textFont = [MGLRuntimeStylingHelper testFont];
    layer.textSize = [MGLRuntimeStylingHelper testNumber];
    layer.textMaxWidth = [MGLRuntimeStylingHelper testNumber];
    layer.textLineHeight = [MGLRuntimeStylingHelper testNumber];
    layer.textLetterSpacing = [MGLRuntimeStylingHelper testNumber];
    layer.textJustify = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextJustifyRight type:@encode(MGLSymbolStyleLayerTextJustify)];
    layer.textAnchor = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextAnchorBottomRight type:@encode(MGLSymbolStyleLayerTextAnchor)];
    layer.textMaxAngle = [MGLRuntimeStylingHelper testNumber];
    layer.textRotate = [MGLRuntimeStylingHelper testNumber];
    layer.textPadding = [MGLRuntimeStylingHelper testNumber];
    layer.textKeepUpright = [MGLRuntimeStylingHelper testBool];
    layer.textTransform = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextTransformLowercase type:@encode(MGLSymbolStyleLayerTextTransform)];
    layer.textOffset = [MGLRuntimeStylingHelper testOffset];
    layer.textAllowOverlap = [MGLRuntimeStylingHelper testBool];
    layer.textIgnorePlacement = [MGLRuntimeStylingHelper testBool];
    layer.textOptional = [MGLRuntimeStylingHelper testBool];
    layer.iconOpacity = [MGLRuntimeStylingHelper testNumber];
    layer.iconColor = [MGLRuntimeStylingHelper testColor];
    layer.iconHaloColor = [MGLRuntimeStylingHelper testColor];
    layer.iconHaloWidth = [MGLRuntimeStylingHelper testNumber];
    layer.iconHaloBlur = [MGLRuntimeStylingHelper testNumber];
    layer.iconTranslate = [MGLRuntimeStylingHelper testOffset];
    layer.iconTranslateAnchor = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerIconTranslateAnchor)];
    layer.textOpacity = [MGLRuntimeStylingHelper testNumber];
    layer.textColor = [MGLRuntimeStylingHelper testColor];
    layer.textHaloColor = [MGLRuntimeStylingHelper testColor];
    layer.textHaloWidth = [MGLRuntimeStylingHelper testNumber];
    layer.textHaloBlur = [MGLRuntimeStylingHelper testNumber];
    layer.textTranslate = [MGLRuntimeStylingHelper testOffset];
    layer.textTranslateAnchor = [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerTextTranslateAnchor)];

    MGLSymbolStyleLayer *gLayer = [self.mapView.style layerWithIdentifier:@"layerID"];
    XCTAssert([(NSValue *)gLayer.symbolPlacement isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerSymbolPlacementLine type:@encode(MGLSymbolStyleLayerSymbolPlacement)]], @"%@ is not equal to %@", gLayer.symbolPlacement, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerSymbolPlacementLine type:@encode(MGLSymbolStyleLayerSymbolPlacement)]);
    XCTAssertEqualObjects(gLayer.symbolSpacing, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.symbolAvoidEdges, [MGLRuntimeStylingHelper testBool]);
    XCTAssertEqualObjects(gLayer.iconAllowOverlap, [MGLRuntimeStylingHelper testBool]);
    XCTAssertEqualObjects(gLayer.iconIgnorePlacement, [MGLRuntimeStylingHelper testBool]);
    XCTAssertEqualObjects(gLayer.iconOptional, [MGLRuntimeStylingHelper testBool]);
    XCTAssert([(NSValue *)gLayer.iconRotationAlignment isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerIconRotationAlignment)]], @"%@ is not equal to %@", gLayer.iconRotationAlignment, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerIconRotationAlignment)]);
    XCTAssertEqualObjects(gLayer.iconSize, [MGLRuntimeStylingHelper testNumber]);
    XCTAssert([(NSValue *)gLayer.iconTextFit isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconTextFitHeight type:@encode(MGLSymbolStyleLayerIconTextFit)]], @"%@ is not equal to %@", gLayer.iconTextFit, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconTextFitHeight type:@encode(MGLSymbolStyleLayerIconTextFit)]);
    XCTAssertEqualObjects(gLayer.iconTextFitPadding, [MGLRuntimeStylingHelper testPadding]);
    XCTAssertEqualObjects(gLayer.iconImage, [MGLRuntimeStylingHelper testString]);
    XCTAssertEqualObjects(gLayer.iconRotate, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.iconPadding, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.iconKeepUpright, [MGLRuntimeStylingHelper testBool]);
    XCTAssertEqualObjects(gLayer.iconOffset, [MGLRuntimeStylingHelper testOffset]);
    XCTAssert([(NSValue *)gLayer.textPitchAlignment isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextPitchAlignmentViewport type:@encode(MGLSymbolStyleLayerTextPitchAlignment)]], @"%@ is not equal to %@", gLayer.textPitchAlignment, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextPitchAlignmentViewport type:@encode(MGLSymbolStyleLayerTextPitchAlignment)]);
    XCTAssert([(NSValue *)gLayer.textRotationAlignment isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerTextRotationAlignment)]], @"%@ is not equal to %@", gLayer.textRotationAlignment, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerTextRotationAlignment)]);
    XCTAssertEqualObjects(gLayer.textField, [MGLRuntimeStylingHelper testString]);
    XCTAssertEqualObjects(gLayer.textFont, [MGLRuntimeStylingHelper testFont]);
    XCTAssertEqualObjects(gLayer.textSize, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textMaxWidth, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textLineHeight, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textLetterSpacing, [MGLRuntimeStylingHelper testNumber]);
    XCTAssert([(NSValue *)gLayer.textJustify isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextJustifyRight type:@encode(MGLSymbolStyleLayerTextJustify)]], @"%@ is not equal to %@", gLayer.textJustify, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextJustifyRight type:@encode(MGLSymbolStyleLayerTextJustify)]);
    XCTAssert([(NSValue *)gLayer.textAnchor isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextAnchorBottomRight type:@encode(MGLSymbolStyleLayerTextAnchor)]], @"%@ is not equal to %@", gLayer.textAnchor, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextAnchorBottomRight type:@encode(MGLSymbolStyleLayerTextAnchor)]);
    XCTAssertEqualObjects(gLayer.textMaxAngle, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textRotate, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textPadding, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textKeepUpright, [MGLRuntimeStylingHelper testBool]);
    XCTAssert([(NSValue *)gLayer.textTransform isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextTransformLowercase type:@encode(MGLSymbolStyleLayerTextTransform)]], @"%@ is not equal to %@", gLayer.textTransform, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextTransformLowercase type:@encode(MGLSymbolStyleLayerTextTransform)]);
    XCTAssertEqualObjects(gLayer.textOffset, [MGLRuntimeStylingHelper testOffset]);
    XCTAssertEqualObjects(gLayer.textAllowOverlap, [MGLRuntimeStylingHelper testBool]);
    XCTAssertEqualObjects(gLayer.textIgnorePlacement, [MGLRuntimeStylingHelper testBool]);
    XCTAssertEqualObjects(gLayer.textOptional, [MGLRuntimeStylingHelper testBool]);
    XCTAssertEqualObjects(gLayer.iconOpacity, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.iconColor, [MGLRuntimeStylingHelper testColor]);
    XCTAssertEqualObjects(gLayer.iconHaloColor, [MGLRuntimeStylingHelper testColor]);
    XCTAssertEqualObjects(gLayer.iconHaloWidth, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.iconHaloBlur, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.iconTranslate, [MGLRuntimeStylingHelper testOffset]);
    XCTAssert([(NSValue *)gLayer.iconTranslateAnchor isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerIconTranslateAnchor)]], @"%@ is not equal to %@", gLayer.iconTranslateAnchor, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerIconTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerIconTranslateAnchor)]);
    XCTAssertEqualObjects(gLayer.textOpacity, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textColor, [MGLRuntimeStylingHelper testColor]);
    XCTAssertEqualObjects(gLayer.textHaloColor, [MGLRuntimeStylingHelper testColor]);
    XCTAssertEqualObjects(gLayer.textHaloWidth, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textHaloBlur, [MGLRuntimeStylingHelper testNumber]);
    XCTAssertEqualObjects(gLayer.textTranslate, [MGLRuntimeStylingHelper testOffset]);
    XCTAssert([(NSValue *)gLayer.textTranslateAnchor isEqualToValue:[MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerTextTranslateAnchor)]], @"%@ is not equal to %@", gLayer.textTranslateAnchor, [MGLRuntimeStylingHelper testEnum:MGLSymbolStyleLayerTextTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerTextTranslateAnchor)]);

    layer.symbolPlacement = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerSymbolPlacementLine type:@encode(MGLSymbolStyleLayerSymbolPlacement)];
    layer.symbolSpacing = [MGLRuntimeStylingHelper testNumberFunction];
    layer.symbolAvoidEdges = [MGLRuntimeStylingHelper testBoolFunction];
    layer.iconAllowOverlap = [MGLRuntimeStylingHelper testBoolFunction];
    layer.iconIgnorePlacement = [MGLRuntimeStylingHelper testBoolFunction];
    layer.iconOptional = [MGLRuntimeStylingHelper testBoolFunction];
    layer.iconRotationAlignment = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerIconRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerIconRotationAlignment)];
    layer.iconSize = [MGLRuntimeStylingHelper testNumberFunction];
    layer.iconTextFit = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerIconTextFitHeight type:@encode(MGLSymbolStyleLayerIconTextFit)];
    layer.iconTextFitPadding = [MGLRuntimeStylingHelper testPaddingFunction];
    layer.iconImage = [MGLRuntimeStylingHelper testStringFunction];
    layer.iconRotate = [MGLRuntimeStylingHelper testNumberFunction];
    layer.iconPadding = [MGLRuntimeStylingHelper testNumberFunction];
    layer.iconKeepUpright = [MGLRuntimeStylingHelper testBoolFunction];
    layer.iconOffset = [MGLRuntimeStylingHelper testOffsetFunction];
    layer.textPitchAlignment = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextPitchAlignmentViewport type:@encode(MGLSymbolStyleLayerTextPitchAlignment)];
    layer.textRotationAlignment = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerTextRotationAlignment)];
    layer.textField = [MGLRuntimeStylingHelper testStringFunction];
    layer.textFont = [MGLRuntimeStylingHelper testFontFunction];
    layer.textSize = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textMaxWidth = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textLineHeight = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textLetterSpacing = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textJustify = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextJustifyRight type:@encode(MGLSymbolStyleLayerTextJustify)];
    layer.textAnchor = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextAnchorBottomRight type:@encode(MGLSymbolStyleLayerTextAnchor)];
    layer.textMaxAngle = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textRotate = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textPadding = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textKeepUpright = [MGLRuntimeStylingHelper testBoolFunction];
    layer.textTransform = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextTransformLowercase type:@encode(MGLSymbolStyleLayerTextTransform)];
    layer.textOffset = [MGLRuntimeStylingHelper testOffsetFunction];
    layer.textAllowOverlap = [MGLRuntimeStylingHelper testBoolFunction];
    layer.textIgnorePlacement = [MGLRuntimeStylingHelper testBoolFunction];
    layer.textOptional = [MGLRuntimeStylingHelper testBoolFunction];
    layer.iconOpacity = [MGLRuntimeStylingHelper testNumberFunction];
    layer.iconColor = [MGLRuntimeStylingHelper testColorFunction];
    layer.iconHaloColor = [MGLRuntimeStylingHelper testColorFunction];
    layer.iconHaloWidth = [MGLRuntimeStylingHelper testNumberFunction];
    layer.iconHaloBlur = [MGLRuntimeStylingHelper testNumberFunction];
    layer.iconTranslate = [MGLRuntimeStylingHelper testOffsetFunction];
    layer.iconTranslateAnchor = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerIconTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerIconTranslateAnchor)];
    layer.textOpacity = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textColor = [MGLRuntimeStylingHelper testColorFunction];
    layer.textHaloColor = [MGLRuntimeStylingHelper testColorFunction];
    layer.textHaloWidth = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textHaloBlur = [MGLRuntimeStylingHelper testNumberFunction];
    layer.textTranslate = [MGLRuntimeStylingHelper testOffsetFunction];
    layer.textTranslateAnchor = [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerTextTranslateAnchor)];

    XCTAssertEqualObjects(gLayer.symbolPlacement, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerSymbolPlacementLine type:@encode(MGLSymbolStyleLayerSymbolPlacement)]);
    XCTAssertEqualObjects(gLayer.symbolSpacing, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.symbolAvoidEdges, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.iconAllowOverlap, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.iconIgnorePlacement, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.iconOptional, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.iconRotationAlignment, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerIconRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerIconRotationAlignment)]);
    XCTAssertEqualObjects(gLayer.iconSize, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.iconTextFit, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerIconTextFitHeight type:@encode(MGLSymbolStyleLayerIconTextFit)]);
    XCTAssertEqualObjects(gLayer.iconTextFitPadding, [MGLRuntimeStylingHelper testPaddingFunction]);
    XCTAssertEqualObjects(gLayer.iconImage, [MGLRuntimeStylingHelper testStringFunction]);
    XCTAssertEqualObjects(gLayer.iconRotate, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.iconPadding, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.iconKeepUpright, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.iconOffset, [MGLRuntimeStylingHelper testOffsetFunction]);
    XCTAssertEqualObjects(gLayer.textPitchAlignment, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextPitchAlignmentViewport type:@encode(MGLSymbolStyleLayerTextPitchAlignment)]);
    XCTAssertEqualObjects(gLayer.textRotationAlignment, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextRotationAlignmentViewport type:@encode(MGLSymbolStyleLayerTextRotationAlignment)]);
    XCTAssertEqualObjects(gLayer.textField, [MGLRuntimeStylingHelper testStringFunction]);
    XCTAssertEqualObjects(gLayer.textFont, [MGLRuntimeStylingHelper testFontFunction]);
    XCTAssertEqualObjects(gLayer.textSize, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textMaxWidth, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textLineHeight, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textLetterSpacing, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textJustify, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextJustifyRight type:@encode(MGLSymbolStyleLayerTextJustify)]);
    XCTAssertEqualObjects(gLayer.textAnchor, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextAnchorBottomRight type:@encode(MGLSymbolStyleLayerTextAnchor)]);
    XCTAssertEqualObjects(gLayer.textMaxAngle, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textRotate, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textPadding, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textKeepUpright, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.textTransform, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextTransformLowercase type:@encode(MGLSymbolStyleLayerTextTransform)]);
    XCTAssertEqualObjects(gLayer.textOffset, [MGLRuntimeStylingHelper testOffsetFunction]);
    XCTAssertEqualObjects(gLayer.textAllowOverlap, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.textIgnorePlacement, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.textOptional, [MGLRuntimeStylingHelper testBoolFunction]);
    XCTAssertEqualObjects(gLayer.iconOpacity, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.iconColor, [MGLRuntimeStylingHelper testColorFunction]);
    XCTAssertEqualObjects(gLayer.iconHaloColor, [MGLRuntimeStylingHelper testColorFunction]);
    XCTAssertEqualObjects(gLayer.iconHaloWidth, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.iconHaloBlur, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.iconTranslate, [MGLRuntimeStylingHelper testOffsetFunction]);
    XCTAssertEqualObjects(gLayer.iconTranslateAnchor, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerIconTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerIconTranslateAnchor)]);
    XCTAssertEqualObjects(gLayer.textOpacity, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textColor, [MGLRuntimeStylingHelper testColorFunction]);
    XCTAssertEqualObjects(gLayer.textHaloColor, [MGLRuntimeStylingHelper testColorFunction]);
    XCTAssertEqualObjects(gLayer.textHaloWidth, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textHaloBlur, [MGLRuntimeStylingHelper testNumberFunction]);
    XCTAssertEqualObjects(gLayer.textTranslate, [MGLRuntimeStylingHelper testOffsetFunction]);
    XCTAssertEqualObjects(gLayer.textTranslateAnchor, [MGLRuntimeStylingHelper testEnumFunction:MGLSymbolStyleLayerTextTranslateAnchorViewport type:@encode(MGLSymbolStyleLayerTextTranslateAnchor)]);
}

@end
