@STATIC;1.0;p;15;AppController.jt;5796;@STATIC;1.0;I;21;Foundation/CPObject.ji;11;MDToolbar.ji;19;MDToolbarDelegate.ji;13;MDHoverView.jt;5693;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("MDToolbar.j",YES);
objj_executeFile("MDToolbarDelegate.j",YES);
objj_executeFile("MDHoverView.j",YES);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_3,_4,_5){
with(_3){
var _6=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask),_7=objj_msgSend(_6,"contentView");
var _8=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",objj_msgSend(_7,"bounds"));
objj_msgSend(_8,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.949,0.945,0.929,1));
var _9=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_7,"bounds")),300),15,0));
objj_msgSend(_9,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_8,"addSubview:",_9);
var _a=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_a,"setStringValue:","Digital Mining,\nBest solutions \nfor biggest problems");
objj_msgSend(_a,"setTextColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",1,0.373,0.341,1));
objj_msgSend(_a,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_a,"setVerticalAlignment:",CPTopVerticalTextAlignment);
objj_msgSend(_a,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_a,"setFont:",objj_msgSend(CPFont,"fontWithName:size:","Cookie",70));
objj_msgSend(_a,"sizeToFit");
objj_msgSend(_a,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_a,"setCenter:",objj_msgSend(_9,"center"));
objj_msgSend(_9,"addSubview:",_a);
var _b=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(CGRectMake(0,CGRectGetHeight(objj_msgSend(_9,"bounds")),CGRectGetWidth(objj_msgSend(_7,"bounds")),300),50,0));
objj_msgSend(_b,"addSubview:",objj_msgSend(_3,"createHoverViewWithFrame:titleLabel:message:",CGRectInset(CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_b,"bounds"))/3,CGRectGetHeight(objj_msgSend(_b,"bounds"))),10,10),"What makes a great app?","Lepsun mehis,\nSaluisons niesrs\nluifgetr gtredde"));
objj_msgSend(_b,"addSubview:",objj_msgSend(_3,"createHoverViewWithFrame:titleLabel:message:",CGRectInset(CGRectMake(CGRectGetWidth(objj_msgSend(_b,"bounds"))/3,0,CGRectGetWidth(objj_msgSend(_b,"bounds"))/3,CGRectGetHeight(objj_msgSend(_b,"bounds"))),10,10),"The way we work","Lepsun mehis,\nSaluisons niesrs\nluifgetr gtredde"));
objj_msgSend(_b,"addSubview:",objj_msgSend(_3,"createHoverViewWithFrame:titleLabel:message:",CGRectInset(CGRectMake(CGRectGetWidth(objj_msgSend(_b,"bounds"))/3*2,0,CGRectGetWidth(objj_msgSend(_b,"bounds"))/3,CGRectGetHeight(objj_msgSend(_b,"bounds"))),10,10),"Meet the makers","Lepsun mehis,\nSaluisons niesrs\nluifgetr gtredde"));
objj_msgSend(_8,"addSubview:",_b);
objj_msgSend(CPScrollView,"setGlobalScrollerStyle:",CPScrollerStyleOverlay);
var _c=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(objj_msgSend(_7,"bounds")),CGRectGetHeight(objj_msgSend(_7,"bounds"))));
objj_msgSend(_c,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_c,"setAutohidesScrollers:",YES);
objj_msgSend(_c,"setDocumentView:",_8);
objj_msgSend(_7,"addSubview:",_c);
var _d=objj_msgSend(objj_msgSend(MDToolbar,"alloc"),"initWithIdentifier:","Details");
objj_msgSend(_d,"setHeight:",150);
objj_msgSend(_d,"setDelegate:",objj_msgSend(objj_msgSend(MDToolbarDelegate,"alloc"),"init"));
objj_msgSend(_d,"setVisible:",YES);
objj_msgSend(_6,"setToolbar:",_d);
objj_msgSend(_6,"orderFront:",_3);
}
}),new objj_method(sel_getUid("createHoverViewWithFrame:titleLabel:message:"),function(_e,_f,_10,_11,_12){
with(_e){
var _13=objj_msgSend(objj_msgSend(MDHoverView,"alloc"),"initWithFrame:",_10);
objj_msgSend(_13,"setAlphaValue:",0.5);
objj_msgSend(_13,"setTarget:",_e);
objj_msgSend(_13,"setAction:",sel_getUid("selectedHoverView:"));
var _14=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_14,"setStringValue:",_11);
objj_msgSend(_14,"setTextColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.6,0.596,0.678,1));
objj_msgSend(_14,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_14,"setVerticalAlignment:",CPTopVerticalTextAlignment);
objj_msgSend(_14,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_14,"setFont:",objj_msgSend(CPFont,"fontWithName:size:italic:","Times New Roman",24,YES));
objj_msgSend(_14,"sizeToFit");
objj_msgSend(_14,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_13,"addSubview:",_14);
var _15=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,CGRectGetHeight(objj_msgSend(_14,"bounds")),CGRectGetWidth(_10),0));
objj_msgSend(_15,"setStringValue:",_12);
objj_msgSend(_15,"setTextColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.6,0.596,0.678,1));
objj_msgSend(_15,"setAlignment:",CPLeftTextAlignment);
objj_msgSend(_15,"setVerticalAlignment:",CPTopVerticalTextAlignment);
objj_msgSend(_15,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_15,"setFont:",objj_msgSend(CPFont,"fontWithName:size:italic:","Arial",16,NO));
objj_msgSend(_15,"sizeToFit");
objj_msgSend(_15,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_13,"addSubview:",_15);
return _13;
}
}),new objj_method(sel_getUid("selectedHoverView:"),function(_16,_17,_18){
with(_16){
console.log(_18);
}
})]);
p;6;main.jt;267;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;181;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
p;13;MDHoverView.jt;1457;@STATIC;1.0;t;1438;
var _1=objj_allocateClassPair(CPView,"MDHoverView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("target"),new objj_ivar("action")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("MDHoverView").super_class},"init");
if(_3){
}
return _3;
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_5,_6,_7){
with(_5){
objj_msgSend(_5,"setAlphaValue:",1);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_8,_9,_a){
with(_8){
objj_msgSend(_8,"setAlphaValue:",0.5);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(_b,"convertPoint:fromView:",objj_msgSend(_d,"locationInWindow"),nil).x;
console.log(_e,objj_msgSend(_d,"clickCount"));
objj_msgSend(_b,"onContinousEvent:",_d);
}
}),new objj_method(sel_getUid("onContinousEvent:"),function(_f,_10,_11){
with(_f){
if(target&&action&&objj_msgSend(target,"respondsToSelector:",action)){
objj_msgSend(target,"performSelector:withObject:",action,_f);
}
}
}),new objj_method(sel_getUid("setAction:"),function(_12,_13,_14){
with(_12){
action=_14;
}
}),new objj_method(sel_getUid("action"),function(_15,_16){
with(_15){
return action;
}
}),new objj_method(sel_getUid("setTarget:"),function(_17,_18,_19){
with(_17){
target=_19;
}
}),new objj_method(sel_getUid("target"),function(_1a,_1b){
with(_1a){
return target;
}
})]);
p;11;MDToolbar.jt;928;@STATIC;1.0;I;18;AppKit/CPToolbar.jt;887;
objj_executeFile("AppKit/CPToolbar.j",NO);
var _1=objj_allocateClassPair(CPToolbar,"MDToolbar"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_viewHeight")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_toolbarView"),function(_3,_4){
with(_3){
if(!_viewHeight){
_viewHeight=59;
}
if(!_toolbarView){
_toolbarView=objj_msgSend(objj_msgSend(_CPToolbarView,"alloc"),"initWithFrame:",CPRectMake(0,0,1200,_viewHeight));
console.log(_toolbarView);
objj_msgSend(_toolbarView,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.949,0.945,0.929,1));
objj_msgSend(_toolbarView,"setToolbar:",_3);
objj_msgSend(_toolbarView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_toolbarView,"reloadToolbarItems");
}
return _toolbarView;
}
}),new objj_method(sel_getUid("setHeight:"),function(_5,_6,_7){
with(_5){
_viewHeight=_7;
}
})]);
p;19;MDToolbarDelegate.jt;3254;@STATIC;1.0;t;3235;
var _1="SliderToolbarItemIdentifier",_2="AddToolbarItemIdentifier",_3="LogoItemIdentifier";
var _4=objj_allocateClassPair(CPObject,"MDToolbarDelegate"),_5=_4.isa;
objj_registerClassPair(_4);
class_addMethods(_4,[new objj_method(sel_getUid("init"),function(_6,_7){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("MDToolbarDelegate").super_class},"init");
if(_6){
}
return _6;
}
}),new objj_method(sel_getUid("toolbarAllowedItemIdentifiers:"),function(_8,_9,_a){
with(_8){
return [CPToolbarFlexibleSpaceItemIdentifier,_1,_2,_3];
}
}),new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"),function(_b,_c,_d){
with(_b){
return [_2,_3,CPToolbarFlexibleSpaceItemIdentifier,_1];
}
}),new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_e,_f,_10,_11,_12){
with(_e){
var _13=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_11);
if(_11==_3){
var _14=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,300,150)),_15=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,0,300,0));
objj_msgSend(_15,"setStringValue:","DM");
objj_msgSend(_15,"setEditable:",NO);
objj_msgSend(_15,"setFont:",objj_msgSend(CPFont,"fontWithName:size:","American Typewriter",128));
objj_msgSend(_15,"setTextShadowColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.6,0.596,0.678,1));
objj_msgSend(_15,"setTextShadowOffset:",CGSizeMake(10,10));
objj_msgSend(_15,"sizeToFit");
objj_msgSend(_14,"addSubview:",_15);
objj_msgSend(_13,"setView:",_14);
objj_msgSend(_13,"setMinSize:",CGSizeMake(300,150));
objj_msgSend(_13,"setMaxSize:",CGSizeMake(300,150));
}else{
if(_11==_1){
var _14=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,400,150)),_15=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(0,100,100,40)),_16=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(100,100,20,40)),_17=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(120,100,100,40));
objj_msgSend(_15,"setStringValue:","About Us");
objj_msgSend(_15,"setEditable:",NO);
objj_msgSend(_15,"setFont:",objj_msgSend(CPFont,"fontWithName:size:italic:","Times New Roman",20,YES));
objj_msgSend(_15,"setTextColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.6,0.596,0.678,1));
objj_msgSend(_14,"addSubview:",_15);
objj_msgSend(_16,"setStringValue:","/");
objj_msgSend(_16,"setEditable:",NO);
objj_msgSend(_16,"setFont:",objj_msgSend(CPFont,"fontWithName:size:italic:","Times New Roman",20,YES));
objj_msgSend(_16,"setTextColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.6,0.596,0.678,1));
objj_msgSend(_14,"addSubview:",_16);
objj_msgSend(_17,"setStringValue:","Know Us");
objj_msgSend(_17,"setEditable:",NO);
objj_msgSend(_17,"setFont:",objj_msgSend(CPFont,"fontWithName:size:italic:","Times New Roman",20,YES));
objj_msgSend(_17,"setTextColor:",objj_msgSend(CPColor,"colorWithRed:green:blue:alpha:",0.6,0.596,0.678,1));
objj_msgSend(_14,"addSubview:",_17);
objj_msgSend(_13,"setView:",_14);
objj_msgSend(_13,"setMinSize:",CGSizeMake(300,150));
objj_msgSend(_13,"setMaxSize:",CGSizeMake(300,150));
}
}
return _13;
}
})]);
e;