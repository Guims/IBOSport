.class public Lamimo/dcc/DccApplication;
.super Landroid/app/Application;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const-string v0, "hax"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public native constructor <init>()V
.end method

.method public static final native initDcc()V
.end method
